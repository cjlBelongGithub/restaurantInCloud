package com.restaurant.control;


import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.restaurant.entity.Comment;
import com.restaurant.entity.Post;
import com.restaurant.entity.Restaurant;
import com.restaurant.entity.User;
import com.restaurant.service.Implement.PostServiceImpl;
import com.restaurant.service.Interface.CommentService;
import com.restaurant.service.Interface.RestaurantService;
import javafx.geometry.Pos;
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
    @Autowired
    private CommentService commentService;

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

    @RequestMapping("/allPosts.action")
    public void allPosts(Integer pageNum, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (pageNum == null) {
            pageNum = 0;
        }
        PageHelper.startPage(pageNum, 3);
        List<Post> posts = postService.getAllPosts();
        PageInfo<Post> postPageInfo = new PageInfo<Post>(posts);
        request.setAttribute("posts", postPageInfo);
        request.getRequestDispatcher("/posts.jsp").forward(request, response);
    }

    @RequestMapping("/showPost.action")
    public void showPost(Integer postId, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Post post = postService.getAPost(postId);
        request.setAttribute("post", post);
        request.getRequestDispatcher("/singlePost.jsp").forward(request, response);
    }


    @RequestMapping("/toCommentPost.action")
    public void comment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        Comment comment = new Comment();
        Integer toPostId = Integer.parseInt(request.getParameter("topostid"));
        String content = request.getParameter("content");
        comment.setContent(content);
        comment.setTopostid(toPostId);
        comment.setTomenuid(-1);
        comment.setTocommentid(-1);
        comment.setTime(new Date());
        comment.setUsername(user.getName());
        comment.setUserid(user.getUid());
        comment.setScore(-1);
        commentService.addAComment(comment);
        request.getRequestDispatcher("/post/showPost.action?postId=" + toPostId).forward(request, response);
    }

}
