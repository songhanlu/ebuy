package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.pojo.ProductCategory;
import com.bdqn.ebuy.service.productCategory.ProductCategoryService;
import com.bdqn.ebuy.utils.Comm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hp on 2017/12/21.
 */
@Controller
@RequestMapping("/pc")
public class AfterProductCategoryController {
    @Resource
    private ProductCategoryService productCategoryService;
    @RequestMapping("/toPcList")
    public String toPcList(Model model){
        List<ProductCategory> productCategories = productCategoryService.findAll();
        List<ProductCategory> productCategories1 = new ArrayList<>();
        if(null!=productCategories){
            for (ProductCategory productCategory : productCategories) {
                int parentID = productCategory.getParentId();
                ProductCategory productCategory_father = productCategoryService.findByID(parentID);
                if(null!=productCategory_father){
                    productCategory.setFather_name(productCategory_father.getName());
                }else {
                    productCategory.setFather_name("");
                }
                productCategories1.add(productCategory);
            }
        }
        model.addAttribute("pcs", productCategories1);
        return "after/after_productCategory";
    }

    @RequestMapping(value = "/addPc",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String addPc(ProductCategory productCategory){
        int result = productCategoryService.add(productCategory);
        if(result>0){
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @RequestMapping(value = "/listPc",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String showListPc(Integer type){
        List<ProductCategory> productCategories = productCategoryService.findAllByType(type);
        return JSON.toJSONString(productCategories);
    }

    @RequestMapping(value = "/delPc",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String delPc(Integer id){
        int count = productCategoryService.countByParentID(id);
        if(count>0){
            return JSON.toJSONString(Comm.cannotDelPC());
        }
        int result = productCategoryService.del(id);
        if(result>0){
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }
}
