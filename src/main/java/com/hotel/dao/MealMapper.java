package com.hotel.dao;

import com.hotel.pojo.Meal;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface MealMapper {

    int addMeal(Meal meal);

    int deleteMealById(int id);

    int updateMealById(Meal meal);

    Meal queryMealById(int id);

    ArrayList<Meal> queryAllMeal();


}
