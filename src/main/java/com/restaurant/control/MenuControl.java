package com.restaurant.control;

import com.restaurant.entity.*;
import com.restaurant.service.Interface.CommentService;
import com.restaurant.service.Interface.MenuService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@RequestMapping("/menu")
@RestController
public class MenuControl {
    @Autowired
    private CommentService commentService;

    @Autowired
    private MenuService menuService;

    @RequestMapping("/makeAComment.action")
    public void makeAComment(Comment comment,HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        comment.setContent(request.getParameter("content"));
        Integer menuId = Integer.parseInt(request.getParameter("menuId"));
            comment.setTomenuid(menuId);
            comment.setTime(new Date());
            comment.setUsername(user.getName());
            comment.setUserid(user.getUid());
            comment.setTocommentid(-1);
            comment.setTopostid(-1);
        commentService.addAComment(comment);
        request.getRequestDispatcher("/menu/toComment.action?menuId="+menuId).forward(request,response);
    }

    @RequestMapping("/toComment.action")
    public void toComment(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Integer menuId = Integer.parseInt(request.getParameter("menuId"));
        List<Comment> comments = commentService.getAllCommentOfMenu(menuId);
        request.setAttribute("comments",comments);
        request.setAttribute("menuId",menuId);
        request.getRequestDispatcher("/CommentPage.jsp").forward(request,response);
    }
    @RequestMapping("/myLikeMenu.action")
    public void myLikeMenu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        List<likeMenu> likeMenuList = menuService.allMyLikeMenu(user.getUid());
        request.setAttribute("likeMenuList",likeMenuList);
        request.getRequestDispatcher("/wishlist.jsp").forward(request,response);
    }

    @RequestMapping("/getAMenu.action")
    public void getAMenu(Integer menuId,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Menu menu = menuService.getAMenu(menuId);
        request.setAttribute("menu",menu);
        request.getRequestDispatcher("/menuAlter.jsp").forward(request,response);
    }

    @RequestMapping("alterAMenu.action")
    public void alterAMenu(Menu menu){
        menuService.alterAMenu(menu);
    }

    @RequestMapping("removeAMenu.action")
    public void removeAMenu(Integer menuId){
        menuService.removeAMenu(menuId);
    }

    @RequestMapping("addAMenu.action")
    public void updateType(MultipartFile pictures, Menu menu,HttpServletRequest request){
        Restaurant restaurant = (Restaurant)request.getSession().getAttribute("restaurant");
        menu.setRestaurantid(restaurant.getId());
        boolean uploadFlag=true;
        if(!pictures.isEmpty()) {
            String fileName= pictures.getOriginalFilename();
            String name=System.currentTimeMillis()+"."+ FilenameUtils.getExtension(fileName);
            File file=new File("G:\\project\\restaurant\\src\\main\\webapp\\font-awesome-4.4.0",name);
            menu.setPicture("font-awesome-4.4.0/"+name);
            try {
                pictures.transferTo(file);
            } catch (IllegalStateException e) {
                e.printStackTrace();
                uploadFlag=false;
            } catch (IOException e) {
                e.printStackTrace();
                uploadFlag=false;
            }
        }
        if(uploadFlag) {
            menuService.addMenu(menu);
        }
    }


}

