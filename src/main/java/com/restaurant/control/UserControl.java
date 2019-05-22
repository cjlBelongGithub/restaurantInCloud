package com.restaurant.control;

import com.restaurant.entity.Post;
import com.restaurant.entity.User;
import com.restaurant.service.Implement.PostServiceImpl;
import com.restaurant.service.Interface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@RestController
public class UserControl {
    @Autowired
    private UserService userService;
    @Autowired
    private PostServiceImpl postService;

    @RequestMapping("/quit.action")
    public void quitLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath());
    }

    @RequestMapping("informationChange.action")
    public void changeInformation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User)request.getSession().getAttribute("user");
        user= userService.getInformation(user);
        request.setAttribute("currentInfor",user);
        request.getRequestDispatcher("InformationChange.jsp").forward(request,response);
    }

    @RequestMapping("rewritePassword.action")
    public boolean rewritePassword(HttpServletRequest request,HttpServletResponse response){
        String newPassword = request.getParameter("password");
        User user = (User) request.getSession().getAttribute("user");
        boolean isSuccess = userService.changePassword(newPassword,user.getUid());
        return isSuccess;
    }

    @RequestMapping("rewriteShortSaying.action")
    public boolean rewriteShortSaying(HttpServletRequest request,HttpServletResponse response){
        String shortSaying = request.getParameter("shortSaying");
        User user = (User) request.getSession().getAttribute("user");
        boolean isSuccess = userService.rewriteShortSaying(shortSaying,user.getUid());
        return isSuccess;
    }
    @RequestMapping("rewriteGender.action")
    public boolean rewriteGender(String gender,HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        boolean isSuccess = userService.rewriteGender(gender,user.getUid());
        return isSuccess;
    }
    @RequestMapping("rewriteName.action")
    public boolean rewriteName(String name,HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        boolean isSuccess = userService.rewriteName(name,user.getUid());
        return isSuccess;
    }

    @RequestMapping("allMyPosting.action")
    public void allMyPosting(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        List<Post> posts = postService.allPostOfUser(user.getUid());
        request.setAttribute("posts",posts);
        request.getRequestDispatcher("myPosting.jsp").forward(request,response);
    }

}
