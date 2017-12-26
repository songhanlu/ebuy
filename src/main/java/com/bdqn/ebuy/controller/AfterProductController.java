package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.pojo.EasybuyProduct;
import com.bdqn.ebuy.pojo.Product;
import com.bdqn.ebuy.pojo.ProductCategory;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.productCategory.ProductCategoryService;
import com.bdqn.ebuy.utils.Comm;
import com.github.pagehelper.PageInfo;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2017/12/19.
 */
@Controller
@RequestMapping("/after")
public class AfterProductController {

        @Resource
        private ProductService productService;
        @Resource
        private ProductCategoryService productCategoryService;

        @RequestMapping("/queryAllProduct")
        public String queryAllProduct(Integer pageNum,Integer pageSize,Model model) {
            PageInfo<EasybuyProduct> pageInfo = productService.queryAllProduct(pageNum, pageSize);

            model.addAttribute("pageInfo", pageInfo);
            return "after/after_product";
        }

        @ResponseBody
        @RequestMapping(value = "queryAllProductById",method = RequestMethod.GET,
                produces = {"application/json;charset=UTF-8"})
        public String queryAllProductById (Integer productId) {
            Product easybuyProduct = productService.findProductByID(productId);


            List<ProductCategory> l1Categories = productCategoryService.findAllByType(1);

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
            Map<String, Object> typeMap = new HashMap<>();
            typeMap.put("l1", l1Categories);
            typeMap.put("l2", l2cateMap);
            typeMap.put("l3", l3cateMap);
            typeMap.put("product", easybuyProduct);

            return JSON.toJSONString(typeMap);
        }
        @ResponseBody
        @RequestMapping(value = "updateProduct",method = RequestMethod.POST,
                produces = {"application/json;charset=UTF-8"})
        public String updateProduct(EasybuyProduct easybuyProduct,
                                    HttpSession session,
                                    HttpServletRequest request,
                                    @RequestParam(value = "f_fileName",required = false)MultipartFile attach) {
            //上传文件
            String filePath = null;
            //判断文件是否为空
            if(null!=attach && !attach.isEmpty()){
                String path = request.getSession().getServletContext().getRealPath("statics/upload");
                String oldFileName = attach.getOriginalFilename();//原文件名
                String prefix = FilenameUtils.getExtension(oldFileName);
                //判断文件大小。。todo
                //判断文件格式。。todo
                String fileName = System.currentTimeMillis()+ RandomUtils.nextInt(1000000)+"_product.jpg";
                File targetFile = new File(path, fileName);
                if(!targetFile.exists()){
                    targetFile.mkdirs();
                }
                try {
                    attach.transferTo(targetFile);
                    easybuyProduct.setFileName(fileName);
                } catch (IOException e) {
                    e.printStackTrace();
                    //提示文件上传失败。。todo
                }
            }

            int n = productService.updateProduct(easybuyProduct);
            if (n > 0) {
                return JSON.toJSONString(Comm.success());
            }
            return JSON.toJSONString(Comm.failed());
        }

        @ResponseBody
        @RequestMapping(value = "/changeProductType",method = RequestMethod.POST,
                produces = {"application/json;charset=UTF-8"})
        public String changeProductType(Integer parentID){
            List<ProductCategory> categories = productCategoryService.findAllByParentID(parentID);
            return JSON.toJSONString(categories);
        }
/*@ResponseBody
@RequestMapping(value = "updateProduct",method = RequestMethod.POST,
        produces = {"application/json;charset=UTF-8"})
    public String updateProduct(EasybuyProduct easybuyProduct, HttpSession httpSession, HttpServletRequest request,
                                @RequestParam(value = "f_fileName",required = false)MultipartFile multipartFile){
        String fileName = null;
        if (!multipartFile.isEmpty()) {
            String path = request.getSession().getServletContext().getRealPath("statics" + File.separator + "upload");
            String oldFileName = multipartFile.getOriginalFilename();//源文件名
            String prefix = FilenameUtils.getExtension(oldFileName);//原文件名后缀
            int filesize = 500000;//文件大小

            if (multipartFile.getSize() > filesize) {//上传大小不得超过500kb
                request.setAttribute("uploadFileError", "*上传文件不得超过500kb");
                return JSON.toJSONString(Message.error());
            }else if(prefix.equalsIgnoreCase("jsp")
                    ||prefix.equalsIgnoreCase("png")
                    ||prefix.equalsIgnoreCase("jpeg")
                    ||prefix.equalsIgnoreCase("pneg")){//上传图片格式不正确
                String pictureName = System.currentTimeMillis() + RandomUtils.nextInt(1000000) + "product.jpg";
                File targetFile = new File(path, fileName);
                if (!targetFile.exists()) {
                    targetFile.mkdirs();
                }
                //保存
                try {
                    multipartFile.transferTo(targetFile);
                } catch (IOException e) {
                    e.printStackTrace();
                    request.setAttribute("uploadFileError","*上传失败");
                    return JSON.toJSONString(Message.error());
                }
                fileName = path + File.separator + pictureName;
            }else{
                request.setAttribute("uploadFileError", "*上传图片格式不正确");
                return JSON.toJSONString(Message.error());
            }
        }
        easybuyProduct.setFileName(fileName);
         int n = productService.updateProduct(easybuyProduct);
         if(n<0){
             return JSON.toJSONString(Message.error());
         }
        return JSON.toJSONString(Message.success());
    }*/

    @ResponseBody
    @RequestMapping(value = "/AddProduct",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String AddProduct(Product product,HttpServletRequest request,
                             @RequestParam(value = "f_fileName",required = false)MultipartFile attach){
        //上传文件
        String filePath = null;
        //判断文件是否为空
        if(null!=attach && !attach.isEmpty()){
            String path = request.getSession().getServletContext().getRealPath("statics/upload");
            String oldFileName = attach.getOriginalFilename();//原文件名
            String prefix = FilenameUtils.getExtension(oldFileName);
            //判断文件大小。。todo
            //判断文件格式。。todo
            String fileName = System.currentTimeMillis()+ RandomUtils.nextInt(1000000)+"_product.jpg";
            File targetFile = new File(path, fileName);
            if(!targetFile.exists()){
                targetFile.mkdirs();
            }
            try {
                attach.transferTo(targetFile);
                product.setFileName(fileName);
            } catch (IOException e) {
                e.printStackTrace();
                //提示文件上传失败。。todo
            }
        }



        int n = productService.queryAddProduct(product);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @ResponseBody
    @RequestMapping(value = "/deleteProduct",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String deleteProduct(Integer id){
        int n = productService.deleteproduct(id);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @ResponseBody
    @RequestMapping(value = "/updateVisible",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String updateVisible(Product product) {
        int n = productService.updateVisible(product);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }
}
