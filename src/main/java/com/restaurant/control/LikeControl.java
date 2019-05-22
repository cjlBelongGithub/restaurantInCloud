package com.restaurant.control;

import com.restaurant.entity.User;
import com.restaurant.entity.likeMenu;
import com.restaurant.service.Interface.LikeMenuService;
import com.restaurant.service.Interface.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

@RequestMapping("/like")
@RestController
public class LikeControl {
    @Autowired
    private MenuService menuService;

    @Autowired
    private LikeMenuService likeMenuService;

    @RequestMapping("likeMenu.action")
    public boolean likeMenu(HttpServletRequest request, HttpServletResponse response){
        String menuID = request.getParameter("menuId");
        Integer menuId = "".equals(menuID) ? -1 :Integer.parseInt(menuID);
        User user= (User) request.getSession().getAttribute("user");
        likeMenu likeMenu = new likeMenu();
            likeMenu.setTime(new Date());
            likeMenu.setMenuid(menuId);
            likeMenu.setUserid(user.getUid());
        if (menuId >= 0)
            return menuService.likeMenu(likeMenu);
        return false;
    }

    @RequestMapping("removeAnLikeMenu.action")
    public void removeAnLikeMenu(Integer menuId,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        Integer userId = user.getUid();
        likeMenuService.removeAnLikeMenu(userId,menuId);
        request.getRequestDispatcher("/wishlist.jsp").forward(request,response);
    }
}
