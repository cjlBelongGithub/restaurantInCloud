package com.restaurant.service.Interface;

import com.restaurant.entity.Menu;
import com.restaurant.entity.Post;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.SearchCondition;

import java.util.List;

public interface HomePageService {
    List<Menu> getMenuLike(SearchCondition searchCondition);
    List<Restaurant> getRestaurantLike(SearchCondition searchCondition);
    List<Post> getPostLike(SearchCondition searchCondition);

    List<Menu> getMenuNameLike(String keyWord);
    List<Restaurant> getRestaurantNameLike(String keyWord);
    List<Post> getPostNameLike(String keyWord);
}
