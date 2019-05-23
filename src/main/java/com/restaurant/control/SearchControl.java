package com.restaurant.control;

import com.restaurant.entity.Menu;
import com.restaurant.entity.Post;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.SearchCondition;
import com.restaurant.service.Interface.HomePageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RequestMapping("search")
@RestController
public class SearchControl {
    @Autowired
    private HomePageService homePageService;

    @RequestMapping("menu.action")
    public void menu(HttpServletRequest request, HttpServletResponse response){
        String searchWord = request.getParameter("searchWord");
        SearchCondition searchCondition = new SearchCondition(searchWord);

        List<Menu> menuList = homePageService.getMenuLike(searchCondition);

        request.setAttribute("menuList",menuList);
    }

    @RequestMapping("restaurant.action")
    public void restaurant(String searchWord ,HttpServletRequest request,HttpServletResponse response){
        request.setAttribute("restaurants",homePageService.getRestaurantNameLike(searchWord));
    }

    @RequestMapping("word.action")
    public void searchByKeyWord(String searchWord,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Restaurant> restaurants = homePageService.getRestaurantNameLike(searchWord);
        List<Post> posts = homePageService.getPostNameLike(searchWord);
        List<Menu> menus = homePageService.getMenuNameLike(searchWord);

        request.setAttribute("restaurants",restaurants);
        request.setAttribute("posts",posts);
        request.setAttribute("menus",menus);

        request.getRequestDispatcher("/searchResult.jsp").forward(request,response);
    }
}
