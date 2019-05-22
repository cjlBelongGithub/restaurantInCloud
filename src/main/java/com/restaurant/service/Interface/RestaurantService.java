package com.restaurant.service.Interface;

import com.restaurant.entity.Menu;
import com.restaurant.entity.Notice;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.RestaurantReply;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface RestaurantService {
    void getRestaurantsOfCompany(HttpServletRequest request, String company);
    boolean loginCheck(Restaurant restaurant);
    void registerARestaurant(Restaurant restaurant);
    boolean isTheWindowManaging(int id);
    void addMenu(Menu menu);
    void alterMenu(Menu menu);
    Menu selectAMenu(int menuId);
    boolean removeAMenu(int menuId);
    void PushANotice(Notice notice);
    List<Menu> getAllMenuOf(int restaurantId);
    Restaurant getRestaurant(int restaurantId);
    List<Restaurant> getAllRestaurants();
    void replyUser(RestaurantReply restaurantReply);
    Notice getNotice(Integer restaurantId);

}
