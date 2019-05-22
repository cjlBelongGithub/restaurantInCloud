package com.restaurant.service.Interface;

import com.restaurant.entity.Menu;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.likeMenu;
import org.omg.CORBA.INTERNAL;

import java.util.List;

public interface MenuService {
    List<Menu> getRecommendMenu(Integer userId);
    List<Restaurant> getRecommendRestaurant();

    List<Menu> getTheMenuCookWayLike(String name);

    void fullMenusInformation(List<Menu> menuList,Integer userId);

    boolean likeMenu(likeMenu likeMenu);

    boolean removeLikeMenu(likeMenu likeMenu);

    List<likeMenu> allMyLikeMenu(Integer userId);

    Menu getAMenu(Integer menuId);

    void alterAMenu(Menu menu);

    void removeAMenu(Integer menuId);

    void addMenu(Menu menu);
}
