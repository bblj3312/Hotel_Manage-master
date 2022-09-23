package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("jump")
public class JumpController {

    @RequestMapping("/guests_add")
    public String guest(){
        return "guests_add";
    }

    @RequestMapping("/vip_add")
    public String vip(){
        return "vip_add";
    }

    @RequestMapping("/meal_add")
    public String meal(){
        return "meal_add";
    }

    @RequestMapping("/home_add")
    public String home(){
        return "home_add";
    }

    @RequestMapping("/pwd_update")
    public String pwd(){
        return "pwd_update";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/exit")
    public String exit(){
        return "exit";
    }

}
