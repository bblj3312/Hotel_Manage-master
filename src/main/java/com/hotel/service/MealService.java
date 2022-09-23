package com.hotel.service;

import com.hotel.pojo.Meal;

import java.util.ArrayList;

public interface MealService {
    int addMeal(Meal meal);

    int deleteMealById(int id);

    int updateMealById(Meal meal);

    Meal queryMealById(int id);

    ArrayList<Meal> queryAllMeal();

}
