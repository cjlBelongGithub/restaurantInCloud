package com.restaurant.control;

import com.restaurant.entity.Restaurant;
import com.restaurant.entity.User;
import com.restaurant.service.Interface.LoginAndRegisterService;
import com.restaurant.service.Interface.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RequestMapping("/login")
@RestController
public class LoginControl {
    @Autowired
    private LoginAndRegisterService loginAndRegisterService;
    @Autowired
    private RestaurantService restaurantService;

    @RequestMapping("/check.action")
    public void login(User user, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user1 = loginAndRegisterService.login(user);
        if(user1 != null && user1.getPassword().equals(user.getPassword())){
            HttpSession session = request.getSession();
            session.setAttribute("user",user1);
            request.getRequestDispatcher("/homePage/first.action").forward(request,response);
        }else {
            request.getRequestDispatcher("/signin.jsp").forward(request,response);
        }
    }

    @RequestMapping("forRestaurantLoginCheck.action")
    public boolean forRestaurantLoginCheck(Restaurant restaurant, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Boolean flag = loginAndRegisterService.loginForRestaurant(restaurant);
        Restaurant restaurant1 = restaurantService.getRestaurant(restaurant.getId());
        request.getSession().setAttribute("restaurant",restaurant1);
        request.getRequestDispatcher("/homePage/first.action").forward(request,response);
        return flag;
    }

    @RequestMapping("registerForRestaurant.action")
    public boolean registerForRestaurant(Restaurant restaurant, HttpServletRequest request, HttpServletResponse response){
        return loginAndRegisterService.registerForRes(restaurant);
    }

    @RequestMapping("getRestaurantLoginInfo.action")
    public void getRestaurantLoginInfo(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Restaurant> restaurantList = restaurantService.getAllRestaurants();
        request.setAttribute("restaurants" ,restaurantList);
        request.getRequestDispatcher("/signinForRestaurant.jsp").forward(request,response);
    }
}
