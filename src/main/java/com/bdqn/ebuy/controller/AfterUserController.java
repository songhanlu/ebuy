package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.pojo.User;
import com.bdqn.ebuy.service.news.NewsService;
import com.bdqn.ebuy.service.order.OrderService;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.user.UserService;
import com.bdqn.ebuy.utils.Comm;
import com.bdqn.ebuy.utils.MD5;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by hp on 2017/12/18.
 */
@Controller
@RequestMapping("/afterUser")
public class AfterUserController {
    @Resource
    private UserService userService;
    @Resource
    private ProductService productService;
    @Resource
    private NewsService newsService;
    @Resource
    private OrderService orderService;

    @RequestMapping("/login")
    public String login(String loginName, String password, HttpSession session, Model model){
        User user_login = new User();
        user_login.setLoginName(loginName);
        String password1 = null;
        try {
            password1 = MD5.getMD5(password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        user_login.setPassword(password1);
        User user_login1 = userService.login(user_login);
        //查询各项总记录数
        int totalCountUser = userService.queryCount();
        int totalCountProduct = productService.countAllProduct();
        int totalCountNews = newsService.countAllNews();
        int totalCountOrder = orderService.totalCount();
        model.addAttribute("totalCountUser", totalCountUser);
        model.addAttribute("totalCountProduct", totalCountProduct);
        model.addAttribute("totalCountNews", totalCountNews);
        model.addAttribute("totalCountOrder", totalCountOrder);
        if(user_login1!=null){
            session.setAttribute(Comm.CUR_USER,user_login1);
            return "after/after_index";
        }
        return "after/login";
    }

    @RequestMapping(value = "/findUserByID",
            produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String findUserByID(Integer id){
        User userTemp = userService.detailUser(id);
        return JSON.toJSONString(userTemp);
    }

    @RequestMapping(value = "/delUser",
            produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String delUser(Integer id){
        int result = userService.deleteUserById(id);
        if(result>0){
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @RequestMapping(value = "/updateUser", method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String updateUser(User user){

        //MD5转码
        if(user.getPassword().length()<10){
            try {
                user.setPassword(MD5.getMD5(user.getPassword()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        int result = userService.updateUser(user);
        if(result>0){
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }
}
