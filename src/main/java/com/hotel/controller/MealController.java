package com.hotel.controller;

import com.hotel.pojo.Meal;
import com.hotel.service.MealServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/meal")
public class MealController {

    @Autowired
        MealServiceImpl mealService;

    @RequestMapping("/add")
    public ModelAndView add(Meal meal){
        ModelAndView mv = new ModelAndView();
        mealService.addMeal(meal);
        mv.setViewName("suc_m");
        return mv;
    }
    @RequestMapping("/delete")
    public String delete(int id){
        mealService.deleteMealById(id);
        return "redirect:/meal/list";
    }

    @RequestMapping("/list")
    public ModelAndView list(){
        ModelAndView mv = new ModelAndView();
        List<Meal> mealList=mealService.queryAllMeal();
        mv.addObject("list",mealList);
        mv.setViewName("meal_list");
        return mv;
    }
    @RequestMapping("/update1")
    public ModelAndView update1(int id){
        ModelAndView mv = new ModelAndView();
        Meal meal = mealService.queryMealById(id);
        mv.addObject("m",meal);
        mv.setViewName("meal_update");
        return mv;
    }

    @RequestMapping("/update2")
    public String update2(Meal m){
        mealService.updateMealById(m);
        return ("redirect:/meal/list");
    }
}
