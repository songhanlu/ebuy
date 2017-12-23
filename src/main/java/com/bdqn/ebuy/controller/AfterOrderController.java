package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.service.order.OrderService;
import com.bdqn.ebuy.utils.Comm;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by hp on 2017/12/19.
 */
@Controller
@RequestMapping("/afterOrder")
public class AfterOrderController {
    @Resource
    private OrderService orderService;

    @RequestMapping(value = "/delOrder",produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String delOrder(Integer id){
        int result = orderService.deleteUpdateOrder(id);
        if(result>0){
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @RequestMapping(value = "queryOrderByLoginNameOrSerialNumber",method = RequestMethod.GET,
            produces = {"application/json;charset=UTF-8"})
    public String queryOrderByLoginNameOrSerialNumber(Integer pageNum,Integer pageSize,
                                                      String loginName, String serialNumber, Model model){
        PageInfo pageInfo = orderService.queryAll_3(pageNum, pageSize, loginName, serialNumber);
        model.addAttribute("loginName", loginName);
        model.addAttribute("serialNumber", serialNumber);
        model.addAttribute("pageInfo", pageInfo);
        return "after/after_order";
    }

}
