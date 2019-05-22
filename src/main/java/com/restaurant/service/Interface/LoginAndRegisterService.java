package com.restaurant.service.Interface;

import com.restaurant.entity.Restaurant;
import com.restaurant.entity.User;

public interface LoginAndRegisterService {
    User login(User user);

    boolean register(User user);

    boolean isXHIdAlreadyExist(int id);

    boolean loginForRestaurant(Restaurant restaurant);

    boolean registerForRes(Restaurant restaurant);
}
