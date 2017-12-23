package com.bdqn.ebuy.controller;

import com.bdqn.ebuy.pojo.Order;
import com.bdqn.ebuy.pojo.User;
import com.bdqn.ebuy.service.news.NewsService;
import com.bdqn.ebuy.service.order.OrderService;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.user.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by hp on 2017/12/18.
 */
@Controller
@RequestMapping("/after")
public class AfterCommonController {
    @Resource
    private UserService userService;
    @Resource
    private OrderService orderService;
    @Resource
    private ProductService productService;
    @Resource
    private NewsService newsService;


    @RequestMapping("/index.html")
    public String showAfterIndex(Model model){
        //查询各项总记录数
        int totalCountUser = userService.queryCount();
        int totalCountProduct = productService.countAllProduct();
        int totalCountNews = newsService.countAllNews();
        int totalCountOrder = orderService.totalCount();
        model.addAttribute("totalCountUser", totalCountUser);
        model.addAttribute("totalCountProduct", totalCountProduct);
        model.addAttribute("totalCountNews", totalCountNews);
        model.addAttribute("totalCountOrder", totalCountOrder);
        return "after/after_index";
    }

    @RequestMapping("/admin")
    public String showAfterAdmin(){
        return "after/login";
    }

    @RequestMapping("/user.html")
    public String showAfterUser(Integer pageNum, Integer pageSize, Model model){
        PageInfo<User> pageInfo = userService.queryAll(pageNum, pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "after/after_user";
    }
    @RequestMapping("/test.html")
    public String showAfterTest(){

        return "after/after_test";
    }
    @RequestMapping("/order.html")
    public String showAfterOrder(Integer pageNum, Integer pageSize, Model model){
        PageInfo<Order> pageInfo = orderService.queryAll_2(pageNum, pageSize);
        model.addAttribute("pageInfo",pageInfo);
        return "after/after_order";
    }
    @RequestMapping("/product.html")
    public String showAfterProduct(){
        return "after/after_product";
    }
    @RequestMapping("/news.html")
    public String showAfterNews(){
        return "after/after_news";
    }
}
