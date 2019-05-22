package com.restaurant.control;

import com.restaurant.entity.Company;
import com.restaurant.entity.Menu;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.User;
import com.restaurant.service.Interface.HeaderService;
import com.restaurant.service.Interface.MenuService;
import com.restaurant.service.Interface.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("/company")
@RestController
public class CompanyRestaurantsControl {
    @Autowired
    private RestaurantService restaurantService;

    @Autowired
    private HeaderService headerService;

    @Autowired
    private MenuService menuService;

    @RequestMapping("/allRestaurantOfCompany.action")
    public void allRestaurantOfCompany(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        headerService.getAllRestaurantCompany(request);
        List<Restaurant> recommendRestaurant = menuService.getRecommendRestaurant().subList(0,5);

        String companyName = request.getParameter("company");
        request.setAttribute("recommendRestaurant",recommendRestaurant);
        restaurantService.getRestaurantsOfCompany(request,companyName);
        request.getRequestDispatcher("/coupons_grid.jsp").forward(request,response);
    }

    @RequestMapping("allRestaurantOfPosition.action")
    public void allRestaurantOfPosition(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String position = request.getParameter("position");
        Company company = headerService.getAllRestaurantByPosition(position);
        request.setAttribute("company",company);
        request.getRequestDispatcher("/Position_single.jsp").forward(request,response);

    }

    @RequestMapping("/getMenuInfo.action")
    public void getMenuInfo(int menuId, HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        headerService.getAllRestaurantCompany(request);
        List<Restaurant> recommendRestaurant = menuService.getRecommendRestaurant().subList(0,5);
        User user = (User) request.getSession().getAttribute("user");
        List<Menu> recommendMenu = menuService.getRecommendMenu(user == null ? null:user.getUid()).subList(0,8);
        request.setAttribute("recommendMenu",recommendMenu);

        List<Menu> breakfast = menuService.getTheMenuCookWayLike("%早餐%").subList(0,3);
        List<Menu> launch = menuService.getTheMenuCookWayLike("%午餐%").subList(0,3);
        List<Menu> dinner = menuService.getTheMenuCookWayLike("%晚餐%").subList(0,3);

        request.setAttribute("breakfast",breakfast);
        request.setAttribute("launch",launch);
        request.setAttribute("dinner",dinner);

        request.setAttribute("recommendRestaurant",recommendRestaurant);
        Menu menu = restaurantService.selectAMenu(menuId);
        request.setAttribute("menu",menu);
        request.getRequestDispatcher("/single.jsp").forward(request,response);
    }
}
