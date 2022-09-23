package com.hotel.controller;

import com.hotel.pojo.Home;
import com.hotel.service.HomeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/home")

public class HomeController {

    @Autowired
    HomeServiceImpl homeService;

    @RequestMapping("/add")
    public String add(Home home, Model model) throws IOException{

        homeService.addHome(home);
        model.addAttribute("home",home);
        return "home_show";
    }

    @RequestMapping("/delete")
    public String delete(Integer  id){
        homeService.deleteHomeById(id);
        return "redirect:/home/list";
    }

    @RequestMapping("/list")
    public ModelAndView list(){
        ModelAndView mv = new ModelAndView();
        List<Home> homeList=homeService.queryAllHome();
        mv.addObject("list",homeList);
        mv.setViewName("home_list");
        return mv;
    }

    @RequestMapping("/reserve")
    public ModelAndView reserve(String state){
        ModelAndView mv = new ModelAndView();
        List<Home> homeList=homeService.queryHomeReserve(state);
        mv.addObject("reserve",homeList);
        mv.setViewName("home_reserve");
        return mv;
    }

    @RequestMapping("/update1")
    public ModelAndView update1(Integer  id){
        ModelAndView mv = new ModelAndView();
        Home home = homeService.queryHomeById(id);
        mv.addObject("h",home);
        mv.setViewName("home_update");
        return mv;
    }

    @RequestMapping("/update2")
    public String update2(Home h)throws IOException{

        homeService.updateHomeById(h);
        return ("redirect:/home/list");
    }

    @RequestMapping("/show")
    public ModelAndView show(Integer  id){
        ModelAndView mv = new ModelAndView();
        Home home=homeService.queryHomeById(id);
        mv.addObject("home",home);
        mv.setViewName("home_show");
        return mv;
    }

    @RequestMapping("/find")
    public ModelAndView find(int findByNum ){
        ModelAndView mv = new ModelAndView();
        Home home = homeService.queryHomeByNum(findByNum);
        List<Home> homeList=new ArrayList<Home>();
        homeList.add(home);
        if (home==null){
            homeList=homeService.queryAllHome();
            mv.addObject("error","未查询出结果");
        }
        mv.addObject("list",homeList);
        mv.setViewName("home_list");
        return mv;
    }

    @RequestMapping("/type1")
    public String type1(Integer id,Model model){
        Home home = homeService.queryHomeById(id);
        model.addAttribute("h",home);
        return "H_Type_update";
    }

    @RequestMapping("/type2")
    public String type2(Home home){
        homeService.updateH_TypeById(home);
        return "redirect:/home/list";
    }
}
