package com.restaurant.control;


import com.restaurant.entity.Menu;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.User;
import com.restaurant.service.Implement.RestaurantServiceImpl;
import com.restaurant.service.Interface.HeaderService;
import com.restaurant.service.Interface.HomePageService;
import com.restaurant.service.Interface.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("/homePage")
@RestController
public class HomePageControl {
    @Autowired
    private HomePageService homePageService;

    @Autowired
    private MenuService menuService;

    @Autowired
    private RestaurantServiceImpl restaurantServiceImpl;

    @Autowired
    private HeaderService headerService;

    @RequestMapping("/first.action")
    public void homePageShow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
        *//*以下测试代码*//*
        User user = new User();
        user.setXhid(151006102);
        user.setName("憨小四");
        user.setGender("男");
        user.setUid(1);
        user.setPassword("123456789");

        request.getSession().setAttribute("user",user);
        *//*以上测试代码*/

        headerService.getAllRestaurantCompany(request);

        /*SearchCondition searchCondition = new SearchCondition();

        searchCondition.setCookWay("早餐");
        List<Menu> breakFastMenuList = homePageService.getMenuLike(searchCondition).subList(0,1);
        searchCondition.setCookWay("午餐");
        List<Menu> launchMenuList = homePageService.getMenuLike(searchCondition).subList(0,1);
        searchCondition.setCookWay("晚餐");
        List<Menu> dinnerMenuList = homePageService.getMenuLike(searchCondition).subList(0,1);*/

        User user = (User) request.getSession().getAttribute("user");

        List<Menu> recommendMenu = menuService.getRecommendMenu(
                user == null ? null :user.getUid()
        ).subList(0,8);



        List<Restaurant> recommendRestaurant = menuService.getRecommendRestaurant();


        /*request.setAttribute("breakFast",breakFastMenuList);
        request.setAttribute("launch",launchMenuList);
        request.setAttribute("dinner",dinnerMenuList);*/
        request.setAttribute("recommendMenu",recommendMenu);
        request.setAttribute("recommendRestaurant",recommendRestaurant);

        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }


}
