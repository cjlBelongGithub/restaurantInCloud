package com.restaurant.service.Interface;

import com.restaurant.entity.Company;
import com.restaurant.entity.Menu;
import com.restaurant.entity.Restaurant;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface HeaderService {
    void getAllRestaurantCompany(HttpServletRequest request);

    void getHotFoodTopFive(HttpServletRequest request);

    Company getAllRestaurantByPosition(String position);

}
