package com.restaurant.control;

import com.restaurant.entity.*;
import com.restaurant.service.Implement.PostServiceImpl;
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
import java.util.Date;
import java.util.List;

@RequestMapping("/restaurant")
@RestController
public class RestaurantControl {
    @Autowired
    private RestaurantService restaurantService;

    @Autowired
    private HeaderService headerService;

    @Autowired
    private MenuService menuService;

    @Autowired
    private PostServiceImpl postService;

    @RequestMapping("/getAllMenuOfTheRestaurant.action")
    public void getAllMenuOfTheRestaurant(int restaurantId ,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        headerService.getAllRestaurantCompany(request);
        User user = (User) request.getSession().getAttribute("user");
        List<Restaurant> recommendRestaurant = menuService.getRecommendRestaurant().subList(0,5);
        List<Menu> recommendMenu = menuService.getRecommendMenu(
                user == null ? null :user.getUid()
        ).subList(0,8);
        request.setAttribute("recommendMenu",recommendMenu);

        request.setAttribute("recommendRestaurant",recommendRestaurant);

        List<Menu> menuList = restaurantService.getAllMenuOf(restaurantId);
        Restaurant restaurant = restaurantService.getRestaurant(restaurantId);
        request.setAttribute("restaurant" ,restaurant);
        request.setAttribute("menuList",menuList);

        List<Post> posts = postService.allPostsOfCompany(restaurantId);
        request.setAttribute("posts",posts);

        request.getRequestDispatcher("/Restaurant_single.jsp").forward(request,response);
    }

    @RequestMapping("/getAllMenuOfRestaurant.action")
    public List<Menu> getAllMenuOfRestaurant(Integer restaurantId ,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        if(restaurantId == null){
            Restaurant restaurant = (Restaurant)request.getSession().getAttribute("restaurant");
            restaurantId = restaurant.getId();
        }
        return restaurantService.getAllMenuOf(restaurantId);
    }

    @RequestMapping("/getAllMenuOfRestaurantForData.action")
    public void getAllMenuOfRestaurantForData(Integer restaurantId ,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        if(restaurantId == null){
            Restaurant restaurant = (Restaurant)request.getSession().getAttribute("restaurant");
            restaurantId = restaurant.getId();
        }
        request.setAttribute("menu",restaurantService.getAllMenuOf(restaurantId));
        request.getRequestDispatcher("/tendence.jsp").forward(request,response);
    }

    @RequestMapping("/toManageAllMenuOfRestaurant.action")
    public void toManageAllMenuOfRestaurant(HttpServletRequest request ,HttpServletResponse response) throws ServletException, IOException {
        Restaurant restaurant = (Restaurant) request.getSession().getAttribute("restaurant");
        List<Menu> menuList = getAllMenuOfRestaurant(null,request,response);
        request.setAttribute("menus",menuList);
        List<Post> posts = postService.allPostsOfCompany(restaurant.getId());
        request.setAttribute("posts",posts);
        Notice notice = restaurantService.getNotice(restaurant.getId());
        request.setAttribute("notice",notice);
        request.getRequestDispatcher("/manageForRestaurant.jsp").forward(request,response);
    }

    @RequestMapping("replyUser.action")
    public void replyUser(RestaurantReply restaurantReply,HttpServletRequest request,HttpServletResponse response){
        Restaurant restaurant = (Restaurant)request.getSession().getAttribute("restaurant");
        if(restaurant == null)
            return;
        restaurantReply.setTime(new Date());
        restaurantReply.setRestaurantid(restaurant.getId());
        restaurantService.replyUser(restaurantReply);
    }

    @RequestMapping("pushANotice.action")
    public void pushANotice(Notice notice,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Restaurant restaurant = (Restaurant)request.getSession().getAttribute("restaurant");
        notice.setTime(new Date());
        notice.setRestaurantid(restaurant.getId());
        restaurantService.PushANotice(notice);
        toManageAllMenuOfRestaurant(request,response);
    }

}
