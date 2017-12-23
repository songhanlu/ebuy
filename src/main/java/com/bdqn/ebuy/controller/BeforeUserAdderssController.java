package com.bdqn.ebuy.controller;

import com.alibaba.fastjson.JSON;
import com.bdqn.ebuy.pojo.User;
import com.bdqn.ebuy.pojo.UserAddress;
import com.bdqn.ebuy.service.userAddress.UserAddressService;
import com.bdqn.ebuy.utils.Comm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by lenovo on 2017/12/20.
 */
@Controller
@RequestMapping("/userAdderss")
public class BeforeUserAdderssController {
    @Resource
    private UserAddressService userAddressService;

    @RequestMapping("queryAllerss")
    public String queryAdderss(Model model) {
        List<UserAddress> list=userAddressService.queryAll();
        model.addAttribute("userAddress", list);
        return "";
    }
    /*@ResponseBody
    @RequestMapping(value = "queryAdd",method = RequestMethod.POST,
    produces = {"application/json;charset=UTF-8"})
    public String queryAdd(UserAddress userAddress) {
        int n = userAddressService.queryAdd(userAddress);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }*/

    @ResponseBody
    @RequestMapping(value = "updateAddress",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String updateAddress(UserAddress userAddress) {
        int n = userAddressService.updateAddressByIdAndUserId(userAddress);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }
    /*@ResponseBody
    @RequestMapping(value = "deleteAddress",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String deleteAddress(Integer id) {
        int n = userAddressService.deleteAddressById(id);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }*/
    @ResponseBody
    @RequestMapping(value = "deleteAddress",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String deleteAddress(Integer id) {
        int n = userAddressService.deleteAddressById(id);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @ResponseBody
    @RequestMapping(value = "queryAdd",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String queryAdd(UserAddress userAddress, HttpSession session) {
        User currentUser = (User) session.getAttribute(Comm.CUR_USER);
        userAddress.setUserId(currentUser.getId());
        int n = userAddressService.queryAdd(userAddress);
        if (n > 0) {
            return JSON.toJSONString(Comm.success());
        }
        return JSON.toJSONString(Comm.failed());
    }

    @ResponseBody
    @RequestMapping(value = "queryAddressById",method = RequestMethod.POST,
            produces = {"application/json;charset=UTF-8"})
    public String queryAddressById(Integer id) {
        UserAddress address = userAddressService.queryAddressById(id);
        return JSON.toJSONString(address);
    }

}
