package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.pojo.*;
import com.bdqn.ebuy.service.car.CarService;
import com.bdqn.ebuy.service.news.NewsService;
import com.bdqn.ebuy.service.order.OrderService;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.productCategory.ProductCategoryService;
import com.bdqn.ebuy.service.user.UserService;
import com.bdqn.ebuy.service.userAddress.UserAddressService;
import com.bdqn.ebuy.utils.Comm;
import com.bdqn.ebuy.utils.JavaMailUtil;
import com.bdqn.ebuy.utils.MD5;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * Created by hp on 2017/12/21.
 */
@Controller
@RequestMapping("/user")
public class BeforeUserController {
    @Resource
    private ProductCategoryService productCategoryService;
    @Resource
    private ProductService productService;
    @Resource
    private NewsService newsService;
    @Resource
    private UserService userService;
    @Resource
    private CarService carService;
    @Resource
    private UserAddressService userAddressService;
    @Resource
    private OrderService orderService;

    @RequestMapping("/center")
    private String center(HttpSession session, Model model){
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        if(currentUser==null){
            return "redirect:/login.html";
        }
        return "before/user_center";
    }

    @RequestMapping("/logout")
    private String logout(HttpSession session){
        session.removeAttribute(Comm.CUR_USER);
        session.removeAttribute("clientCars");
        return "redirect:/index/shl";
    }

    @RequestMapping("/address")
    private String address(HttpSession session, Model model){
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        if(currentUser==null){
            return "redirect:/login.html";
        }
        model.addAttribute("addresses", userAddressService.queryAllByUserID(currentUser.getId()));
        return "before/address";
    }

    @RequestMapping(value = "beforeLogin",method = RequestMethod.POST)
    public String beforeLogin(String loginName, String password, HttpSession session, Model model) throws Exception {
        //总分类
        List<ProductCategory> l1Categories = productCategoryService.findAllByType(1);
        model.addAttribute("l1Categories", l1Categories);
        Map<String, List<ProductCategory>> l2cateMap = new HashMap<>();
        Map<String, List<ProductCategory>> l3cateMap = new HashMap<>();
        for (ProductCategory l1Category : l1Categories) {
            List<ProductCategory> l2Categories = productCategoryService.findAllByParentID(l1Category.getId());
            l2cateMap.put(l1Category.getName(), l2Categories);
            for (ProductCategory l2Category : l2Categories) {
                List<ProductCategory> l3Categories = productCategoryService.findAllByParentID(l2Category.getId());
                l3cateMap.put(l2Category.getName(), l3Categories);
            }
        }
        model.addAttribute("l2cateMap",l2cateMap);
        model.addAttribute("l3cateMap",l3cateMap);


        //首页新闻资讯
        PageInfo<News> newsPageInfo = newsService.queryNewsAllByVisible(1, 9);
        model.addAttribute("newsPageInfo", newsPageInfo);

        //首页下部分类
        List<Product> list628 = productService.queryProductBycategoryLevel1Id(628);//家居用品
        List<Product> list548 = productService.queryProductBycategoryLevel1Id(548);//化妆品
        List<Product> list676 = productService.queryProductBycategoryLevel1Id(676);//保健食品
        List<Product> list660 = productService.queryProductBycategoryLevel1Id(660);//休闲零食
        List<Product> list670 = productService.queryProductBycategoryLevel1Id(670);//数码家电
        List<Product> list681 = productService.queryProductBycategoryLevel1Id(681);//母婴
        model.addAttribute("productList", list628);
        model.addAttribute("productList1", list548);
        model.addAttribute("productList2", list676);
        model.addAttribute("productList3", list660);
        model.addAttribute("productList4", list670);
        model.addAttribute("productList5", list681);

        User user = userService.beforeLogin(loginName, MD5.getMD5(password) );
        if (user != null) {
            session.setAttribute(Comm.CUR_USER,user);
            //获取carList
            List<Car> carList = (List<Car>) session.getAttribute("carList");
            //首页购物车
            //User currentUser = (User) session.getAttribute("cur_user");
            List<Car> cars = null;
            Integer sum = null;
            if(null!=user){
                cars = carService.findAll(user.getId());
                //todo
                //System.out.println(session.getId());
                //把游客car放到登录用户car里面
                if(null!=carList){
                    for (Car car : carList) {
                        car.setCarUserID(user.getId());
                        cars.add(car);
                        carService.addCar(car);
                    }
                }


                sum = carService.sumByUserID(user.getId());
            }
            //cars = carService.findAll(10);
            //sum = carService.sumByUserID(10);
            //未登录
            /*for (Car car : carList) {
                cars.add(car);
            }*/

            model.addAttribute("cars", cars);
            if(null!=cars){
                model.addAttribute("carsSize", cars.size());
            }else{
                model.addAttribute("carsSize", 0);
            }
            if(null!= sum){
                model.addAttribute("sum", sum);
            }else{
                model.addAttribute("sum", 0);
            }



            return "before/index";
        }
        model.addAttribute("message", "用户名错误或密码错误");
        return "before/login";
    }

    @RequestMapping(value = "beforeRegister",method = RequestMethod.POST)
    public String beforeRegister(User user,String password) throws Exception {
        user.setPassword(MD5.getMD5(password));
        int count = userService.beforeRegister(user);
        if (count > 0) {
            return "before/login";
        }
        return "before/Regist1";
    }

    @ResponseBody
    @RequestMapping(value = "deExists",method = RequestMethod.GET,
            produces = {"application/json;charset=UTF-8"})
    public String deExists(String loginName)  {
        User user = userService.queryUserByLoginName(loginName);

        if (user!=null){
            return "success";
        }

        return "error";
    }

    @ResponseBody
    @RequestMapping(value = "/fogetPassword",produces = {"application/json;charset=UTF-8"})
    public String fogetPassword(String loginName) throws Exception {
        User user = userService.queryUserByLoginName(loginName);
        String email = user.getEmail();
        //生成随机密码
        Random random = new Random();
        String tempPass = random.nextInt(100000) + 1 + ""+loginName;
        String tempPassMd5 = null;
        try {
            tempPassMd5 = MD5.getMD5(tempPass);
            user.setPassword(tempPassMd5);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //发送邮件
        // 1. 创建参数配置, 用于连接邮件服务器的参数配置
        Properties props = new Properties();                    // 参数配置
        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.setProperty("mail.smtp.host", JavaMailUtil.myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
        props.setProperty("mail.smtp.auth", "true");            // 需要请求认证
        props.setProperty("mail.smtp.ssl.enable", "true");      //SSH验证

        // PS: 某些邮箱服务器要求 SMTP 连接需要使用 SSL 安全认证 (为了提高安全性, 邮箱支持SSL连接, 也可以自己开启),
        //     如果无法连接邮件服务器, 仔细查看控制台打印的 log, 如果有有类似 “连接失败, 要求 SSL 安全连接” 等错误,
        //     打开下面 /* ... */ 之间的注释代码, 开启 SSL 安全连接。
        /*
        // SMTP 服务器的端口 (非 SSL 连接的端口一般默认为 25, 可以不添加, 如果开启了 SSL 连接,
        //                  需要改为对应邮箱的 SMTP 服务器的端口, 具体可查看对应邮箱服务的帮助,
        //                  QQ邮箱的SMTP(SLL)端口为465或587, 其他邮箱自行去查看)
        final String smtpPort = "465";
        props.setProperty("mail.smtp.port", smtpPort);
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.socketFactory.port", smtpPort);
        */

        // 2. 根据配置创建会话对象, 用于和邮件服务器交互
        Session session = Session.getInstance(props);
        session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log

        // 3. 创建一封邮件
        MimeMessage message = JavaMailUtil.createMimeMessage(session, JavaMailUtil.myEmailAccount,null, email,tempPass);

        // 4. 根据 Session 获取邮件传输对象
        Transport transport = session.getTransport();

        // 5. 使用 邮箱账号 和 密码 连接邮件服务器, 这里认证的邮箱必须与 message 中的发件人邮箱一致, 否则报错
        //
        //    PS_01: 成败的判断关键在此一句, 如果连接服务器失败, 都会在控制台输出相应失败原因的 log,
        //           仔细查看失败原因, 有些邮箱服务器会返回错误码或查看错误类型的链接, 根据给出的错误
        //           类型到对应邮件服务器的帮助网站上查看具体失败原因。
        //
        //    PS_02: 连接失败的原因通常为以下几点, 仔细检查代码:
        //           (1) 邮箱没有开启 SMTP 服务;
        //           (2) 邮箱密码错误, 例如某些邮箱开启了独立密码;
        //           (3) 邮箱服务器要求必须要使用 SSL 安全连接;
        //           (4) 请求过于频繁或其他原因, 被邮件服务器拒绝服务;
        //           (5) 如果以上几点都确定无误, 到邮件服务器网站查找帮助。
        //
        //    PS_03: 仔细看log, 认真看log, 看懂log, 错误原因都在log已说明。
        transport.connect("smtp.qq.com",JavaMailUtil.myEmailAccount, "zydsdsysleqsdgfc");

        // 6. 发送邮件, 发到所有的收件地址, message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
        transport.sendMessage(message, message.getAllRecipients());

        // 7. 关闭连接
        transport.close();
        userService.updateUser(user);
        return JSON.toJSONString(Comm.fetchPassword());
    }

    @RequestMapping(value = "/order")
    public String queryOrder(Integer pageNum,Integer pageSize,
                             HttpSession session,Model model){
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        PageInfo<Order> pageInfo = orderService.queryOrder(pageNum, pageSize, currentUser.getId());
        model.addAttribute("pageInfo", pageInfo);
        return "before/order";
    }
}
