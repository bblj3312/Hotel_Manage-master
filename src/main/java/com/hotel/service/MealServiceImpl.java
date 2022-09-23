package com.hotel.service;

import com.hotel.dao.MealMapper;
import com.hotel.pojo.Meal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class MealServiceImpl implements MealService{

    @Autowired
    MealMapper mealMapper;

    public int addMeal(Meal meal) {
        return mealMapper.addMeal(meal);
    }

    public int deleteMealById(int id) {
        return mealMapper.deleteMealById(id);
    }

    public int updateMealById(Meal meal) {
        return mealMapper.updateMealById(meal);
    }

    public Meal queryMealById(int id) {
        return mealMapper.queryMealById(id);
    }

    public ArrayList<Meal> queryAllMeal() {
        return mealMapper.queryAllMeal();
    }


}
