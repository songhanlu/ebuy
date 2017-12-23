package com.bdqn.ebuy.controller;

import com.bdqn.ebuy.pojo.*;
import com.bdqn.ebuy.service.car.CarService;
import com.bdqn.ebuy.service.news.NewsService;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.productCategory.ProductCategoryService;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hp on 2017/12/19.
 */
@Controller
@RequestMapping("/index")
public class BeforeIndexController {
    @Resource
    private ProductCategoryService productCategoryService;
    @Resource
    private NewsService newsService;
    @Resource
    private CarService carService;
    @Resource
    private ProductService productService;

    @RequestMapping("/shl")
    public String shl(HttpSession session, Model model){
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


        //首页购物车
        User currentUser = (User) session.getAttribute("cur_user");
        List<Car> cars = null;
        List<Car> clientCars = null;
        Integer sum = null;
        if(null!=currentUser){
            cars = carService.findAll(currentUser.getId());
            sum = carService.sumByUserID(currentUser.getId());
            if(null!=cars){
                model.addAttribute("carsSize", cars.size());
            }else{
                model.addAttribute("carsSize", 0);
            }
        }else{
            clientCars = (List<Car>) session.getAttribute("carList");
            if(null!=clientCars){
                model.addAttribute("carsSize", clientCars.size());
            }else{
                model.addAttribute("carsSize", 0);
            }
        }
        //cars = carService.findAll(10);
        //sum = carService.sumByUserID(10);
        model.addAttribute("cars", cars);
        model.addAttribute("clientCars",clientCars);
        if(null!= sum){
            model.addAttribute("sum", sum);
        }else{
            model.addAttribute("sum", 0);
        }
        return "before/index";
    }

    /*@RequestMapping(value = "/l1catagory",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String l1(){
        List<ProductCategory> productCategories = productCategoryService.findAllByType(1);
        return JSON.toJSONString(productCategories);
    }*/
    @RequestMapping(value = "queryProductByName")
    public String queryProductByName(Integer pageNum, Integer pageSize, HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        List<ProductCategory> l1Categories = productCategoryService.findAllByType(1);
        model.addAttribute("l1Categories", l1Categories);
        Map<String, List<ProductCategory>> l2cateMap = new HashMap<String, List<ProductCategory>>();
        Map<String, List<ProductCategory>> l3cateMap = new HashMap<String, List<ProductCategory>>();
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

        String name = new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8");
        PageInfo pageInfo = productService.queryProductByName(pageNum, pageSize, name);
        model.addAttribute("pageInfo", pageInfo);
        return "before/productList1";
    }
}
