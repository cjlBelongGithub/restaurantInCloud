package com.restaurant.control;


import com.restaurant.entity.Post;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.User;
import com.restaurant.service.Implement.PostServiceImpl;
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

@RequestMapping("post")
@RestController
public class PostControl {
    @Autowired
    private PostServiceImpl postService;
    @Autowired
    private RestaurantService restaurantService;

    @RequestMapping("/myPost.action")
    public void myPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        List<Post> posts = postService.postSendBy(user.getUid());
        request.setAttribute("myPost",posts);
        request.getRequestDispatcher("/myPost.jsp").forward(request,response);
    }

    @RequestMapping("posting.action")
    public void posting(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        List<Restaurant> restaurantList = restaurantService.getAllRestaurants();
        request.setAttribute("restaurants",restaurantList);
        request.getRequestDispatcher("/MakeAPostPage.jsp").forward(request,response);
    }

    @RequestMapping("/sendAPost.action")
    public void sendAPost(Post post){
        post.setTime(new Date());
        postService.addAPost(post);
    }

    @RequestMapping("/removeAPost.action")
    public void removeAPost(Integer postId,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        postService.removeAPost(postId);
        request.getRequestDispatcher("/post/myPost.action").forward(request,response);
    }

}
