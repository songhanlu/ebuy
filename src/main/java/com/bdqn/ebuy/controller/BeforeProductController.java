package com.bdqn.ebuy.controller;

import com.bdqn.ebuy.pojo.*;
import com.bdqn.ebuy.service.car.CarService;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.productCategory.ProductCategoryService;
import com.bdqn.ebuy.utils.Comm;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by hp on 2017/12/19.
 */
@Controller
@RequestMapping("/product")
public class BeforeProductController {
    @Resource
    private ProductService productService;
    @Resource
    private ProductCategoryService productCategoryService;
    @Resource
    private CarService carService;

    @RequestMapping("/listByType")
    public String listByType(Product product, HttpSession session, Model model) {
        List<Product> products = productService.findProductByTypeID(product);
        model.addAttribute("products", products);
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

        //购物车*************
        //获取carList
        List<Car> carList = (List<Car>) session.getAttribute("carList");
        //首页购物车
        List<Car> cars = null;
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        if (currentUser != null){
            cars = carService.findAll(currentUser.getId());
        }
        model.addAttribute("cars", cars);
        model.addAttribute("clientCars", carList);
        if(null!=cars){
            model.addAttribute("carsSize", cars.size());
        }else if(null!=carList){
            model.addAttribute("carsSize", carList.size());
        }else{
            model.addAttribute("carsSize", 0);
        }

        return "before/productList";
    }

    @RequestMapping("/findByID")
    public String findByID(Integer id,HttpSession session, Model model) {
        Product product = productService.findProductByID(id);
        model.addAttribute("product", product);

        //购物车*************
        //获取carList
        List<Car> carList = (List<Car>) session.getAttribute("carList");
        //首页购物车
        List<Car> cars = null;
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        if (currentUser != null){
            cars = carService.findAll(currentUser.getId());
        }
        model.addAttribute("cars", cars);
        model.addAttribute("clientCars", carList);
        if(null!=cars){
            model.addAttribute("carsSize", cars.size());
        }else if(null!=carList){
            model.addAttribute("carsSize", carList.size());
        }else{
            model.addAttribute("carsSize", 0);
        }


        return "before/product";
    }

    @RequestMapping("/queryAllProduct")
    public String queryAllProduct(Integer pageNum, Integer pageSize,HttpSession session, Model model) {
        PageInfo<EasybuyProduct> pageInfo = productService.queryAllProduct(pageNum, pageSize);
        model.addAttribute("pageInfo", pageInfo);

        //购物车*************
        //获取carList
        List<Car> carList = (List<Car>) session.getAttribute("carList");
        //首页购物车
        List<Car> cars = null;
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        if (currentUser != null){
            cars = carService.findAll(currentUser.getId());
        }
        model.addAttribute("cars", cars);
        model.addAttribute("clientCars", carList);
        if(null!=cars){
            model.addAttribute("carsSize", cars.size());
        }else if(null!=carList){
            model.addAttribute("carsSize", carList.size());
        }else{
            model.addAttribute("carsSize", 0);
        }


        return "after/after_product";
    }


}
