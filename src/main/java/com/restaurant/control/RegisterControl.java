package com.restaurant.control;


import com.restaurant.entity.User;
import com.restaurant.service.Interface.LoginAndRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping("/register")
@RestController
public class RegisterControl {
    @Autowired
    private LoginAndRegisterService loginAndRegisterService;

    @RequestMapping("/checkXHID.action")
    public boolean checkXHID(HttpServletRequest request, HttpServletResponse response){
        int id;
        try {
            id = Integer.parseInt(request.getParameter("xhid"));
        }catch (Exception e){
            return false;
        }
        return loginAndRegisterService.isXHIdAlreadyExist(id);
    }

    @RequestMapping("/checkName.action")
    public boolean checkName(String name, HttpServletRequest request, HttpServletResponse response) {
        return loginAndRegisterService.isNameAlreadyExist(name);
    }

    @RequestMapping("/toRegister.action")
    public void toRegister(User user, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        loginAndRegisterService.register(user);
    }
}
