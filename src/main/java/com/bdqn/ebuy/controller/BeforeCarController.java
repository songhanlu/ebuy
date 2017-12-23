package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.pojo.*;
import com.bdqn.ebuy.service.car.CarService;
import com.bdqn.ebuy.service.order.OrderService;
import com.bdqn.ebuy.service.orderDetailService.OrderDetailService;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.user.UserService;
import com.bdqn.ebuy.service.userAddress.UserAddressService;
import com.bdqn.ebuy.utils.Comm;
import com.bdqn.ebuy.utils.ePay.PaymentUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hp on 2017/12/20.
 */
@Controller
@RequestMapping("/car")
public class BeforeCarController {
    @Resource
    private CarService carService;
    @Resource
    private ProductService productService;
    @Resource
    private UserService userService;
    @Resource
    private OrderDetailService orderDetailService;
    @Resource
    private OrderService orderService;
    @Resource
    private UserAddressService userAddressService;





    @RequestMapping(value = "/addCar",method = RequestMethod.POST)
    @ResponseBody
    public String addCar(Car car,HttpSession session){
        List<Car> cars = null;
        Float price = productService.findProductByID(car.getProduct().getId()).getPrice();
        car.setSum((int) price.floatValue() * car.getCarProductQuatity());
        //todo
        //System.out.println(session.getId());

        if(null==session.getAttribute(Comm.CUR_USER)){
            cars = (List<Car>) session.getAttribute("carList");
            if(cars==null){
                cars = new ArrayList<>();
            }
            cars.add(car);
            session.setAttribute("carList",cars);
            return "";
        }


        int result = carService.addCar(car);
        if(result>0){
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @RequestMapping("/listCar")
    public String listCar(Integer userID,HttpSession session, Model model){
        List<Car> cars = carService.findAll(userID);
        if(0==cars.size()){
            return "redirect:/index/shl";
        }
        model.addAttribute("cars", cars);
        int sum = carService.sumByUserID(userID);
        model.addAttribute("sum", sum);

        //购物车*************
        //获取carList
        List<Car> carList = (List<Car>) session.getAttribute("carList");
        //首页购物车
        //List<Car> cars = null;
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        if (currentUser != null){
            cars = carService.findAll(currentUser.getId());
        }
        //model.addAttribute("cars", cars);
        model.addAttribute("clientCars", carList);
        if(null!=cars){
            model.addAttribute("carsSize", cars.size());
        }else if(null!=carList){
            model.addAttribute("carsSize", carList.size());
        }else{
            model.addAttribute("carsSize", 0);
        }

        return "before/car";
    }

    @RequestMapping("/listCar2")
    public String listCar2(Integer userID, HttpSession session, Model model){
        List<Car> cars = carService.findAll(userID);
        if(0==cars.size()){
            return "redirect:/index/shl";
        }
        model.addAttribute("cars", cars);
        int sum = carService.sumByUserID(userID);
        model.addAttribute("sum", sum);
        User currentUser = userService.detailUser(userID);
        //User currentUser = userService.detailUser(10);
        session.setAttribute(Comm.CUR_USER, currentUser);
        //添加订单
        //1、添加订单
        Order order = new Order();
        order.setUserId(currentUser.getId());
        order.setLoginName(currentUser.getLoginName());
        order.setCost(sum);
        //查询客户默认地址
        UserAddress userAddress = userAddressService.findByUserIDDefault(userID);
        if(userAddress==null){
            return "redirect:/user/address";
        }
        order.setUserAddress(userAddress.getAddress());
        Integer addOrderResult = orderService.addOrder(order);
        model.addAttribute("order", order);
        int orderID = order.getId();
        //2、添加订单详情
        if(null!=cars){
            for (Car car : cars) {
                OrderDetail orderDetail = new OrderDetail();
                orderDetail.setOrderId(orderID);
                orderDetail.setProductId(car.getProduct().getId());
                orderDetail.setQuantity(car.getCarProductQuatity());
                orderDetail.setCost(car.getProduct().getPrice());
                orderDetailService.addOrderDetail(orderDetail);
            }
        }
        //购物车
        model.addAttribute("carsSize", cars.size());
        return "before/car2";
    }
    @RequestMapping("/listCar3")
    public String listCar3(Integer orderID,Integer userID, HttpSession session, Model model){
        List<Car> cars = carService.findAll(userID);
        if(0==cars.size()){
            return "redirect:/index/shl";
        }
        model.addAttribute("cars", cars);
        int sum = carService.sumByUserID(userID);
        model.addAttribute("sum", sum);
        User currentUser = userService.detailUser(userID);
        //User currentUser = userService.detailUser(10);
        session.setAttribute(Comm.CUR_USER, currentUser);
        //查询客户默认地址
        UserAddress userAddress = userAddressService.findByUserIDDefault(userID);
        model.addAttribute("userAddress", userAddress);
        //查询订单
        Order order = orderService.findOrderByID(orderID);
        model.addAttribute("order", order);

        //购物车
        model.addAttribute("carsSize", cars.size());
        return "before/car3";
    }

    @RequestMapping(value = "/updateCar",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String updateCar(Car car){
        int result = carService.updateCar(car);
        int sum = carService.sumByUserID(car.getCarUserID());
        Map<String, Integer> map = new HashMap<>();
        map.put("sum", sum);
        return JSON.toJSONString(map);
    }

    @RequestMapping("/delCar")
    public String delCar(Integer userID,Integer carID, Model model){
        carService.deleteCarByID(carID);
        List<Car> cars = carService.findAll(userID);
        if(0==cars.size()){
            return "redirect:/index/shl";
        }
        model.addAttribute("cars", cars);
        int sum = carService.sumByUserID(userID);
        model.addAttribute("sum", sum);
        return "before/car";
    }

    @RequestMapping("/toPay")
    public String toPay(HttpServletRequest request){
        String 	p0_Cmd="Buy",
                p1_MerId="10001126856",
                p2_Order=request.getParameter("p2_Order"),
                p3_Amt="0.01",
                p4_Cur="CNY",
                p5_Pid="",
                p6_Pcat="",
                p7_Pdesc="",
                p8_Url="http://localhost:8080/ebuy/",
                p9_SAF="",
                pa_MP="",
                pd_FrpId="CCB-NET-B2C",
                pr_NeedResponse="1";
        String keyValue="69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl";//69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl
        String hmac= PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, keyValue);
        String url="https://www.yeepay.com/app-merchant-proxy/node?"+
                "&p0_Cmd="+p0_Cmd+
                "&p1_MerId="+p1_MerId+
                "&p2_Order="+p2_Order+
                "&p3_Amt="+p3_Amt+
                "&p4_Cur="+p4_Cur+
                "&p5_Pid="+p5_Pid+
                "&p6_Pcat="+p6_Pcat+
                "&p7_Pdesc="+p7_Pdesc+
                "&p8_Url="+p8_Url+
                "&p9_SAF="+p9_SAF+
                "&pa_MP="+pa_MP+
                "&pd_FrpId="+pd_FrpId+
                "&pr_NeedResponse="+pr_NeedResponse+
                "&hmac="+hmac;
        return "redirect:" + url;
    }



}
