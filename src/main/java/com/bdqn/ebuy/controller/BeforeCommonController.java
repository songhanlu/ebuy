package com.bdqn.ebuy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hp on 2017/12/19.
 */
@Controller
public class BeforeCommonController {
    @RequestMapping("/index.html")
    public String index(){
        return "before/index";
    }

    @RequestMapping("/login.html")
    public String login(){
        return "before/login";
    }

    @RequestMapping("/register")
    public String register(){
        return "before/Regist";
    }


}
