package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.pojo.News;
import com.bdqn.ebuy.pojo.Product;
import com.bdqn.ebuy.pojo.ProductCategory;
import com.bdqn.ebuy.service.news.NewsService;
import com.bdqn.ebuy.service.product.ProductService;
import com.bdqn.ebuy.service.productCategory.ProductCategoryService;
import com.bdqn.ebuy.utils.Comm;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 1713754029@qq.com on 2017/12/18.
 */
@Controller
@RequestMapping("/news")
public class AfterNewsController {
    @Resource
    private NewsService newsService;
    @Resource
    private ProductService productService;
    @Resource
    private ProductCategoryService productCategoryService;

    @RequestMapping("/toNewsList")
    public String newsList(int pageNum,int pageSize,Model model) {
        PageInfo<News> pageInfo = newsService.queryNewsAllByVisible(pageNum, pageSize);
        model.addAttribute("pageInfo", pageInfo);
        return "after/after_news";
    }

    @ResponseBody
    @RequestMapping(value = "addNews", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    public String addNews(News news) {
        int n=newsService.addNews(news);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }
    @ResponseBody
    @RequestMapping(value = "updateNews", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    public String updateNews(News news) {
        int n=newsService.updateNews(news);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @ResponseBody
    @RequestMapping(value = "queryNews", method = RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
    public String queryNews(Integer newsId) {
        News news = newsService.queryNewsById(newsId);
        return JSON.toJSONString(news);
    }
    @ResponseBody
    @RequestMapping(value = "updateNewsByVisible", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    public String updateNewsByVisible(Integer visible) {
        int n=newsService.updateNewsByVisible(visible);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @RequestMapping("/toBeNews")
    public String toBeNews(int pageNum,int pageSize,Model model) {
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

        //前台分类
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

        PageInfo<News> pageInfo = newsService.queryNewsAllByVisible(pageNum, pageSize);
        model.addAttribute("pageInfo", pageInfo);
        return "before/newsIndex";
    }

}