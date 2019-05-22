package com.restaurant.util;


import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginIntcepter implements HandlerInterceptor {
    //请求没有处理之前拦截（身份检测）
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
       //安全认证
        //获得用户请求的url
        String url=request.getRequestURI();//获得用户请求路径
        if(url.endsWith("login_writer.jsp")
                ||url.endsWith("getBookDetail.action")
                ||url.endsWith("managerLogin.jsp")
                ||url.endsWith("login_reader.action")
                ||url.endsWith("register.jsp")
                ||url.endsWith("login.action")
                ||url.endsWith("register.action")
                ||url.endsWith("/")
                ||url.endsWith("homePageShow.action")
                ||url.endsWith("checkIdentifyCode.action")
                ||url.endsWith("findPass.action")
                ||url.endsWith("registerCheckTel.action")
                ||url.endsWith("womanChannel.action")
                ||url.endsWith("loginCheck.action")
                ||url.endsWith("manChannel/detailInfo.action")
                ||url.endsWith("readChapter.action")
                ||url.endsWith("comment/chapterComment.action")
                ||url.endsWith("comment/comments.action")
                ||url.endsWith("searchBooks.action")
                ||url.endsWith("helper.action")
                ||url.endsWith("writeInformation.action")
                ||url.contains("rank"))
        {
            return true;
        }
        //已经登录（session里面取user）
        HttpSession session=request.getSession();


        //没有登录 转发到登录界面
        if(url.contains("/reader")||url.contains("/Reader"))
            request.getRequestDispatcher("/JSP/login_reader.jsp").forward(request,response);
        else if(url.contains("manager")||url.contains("/manage")){
            request.getRequestDispatcher("/JSP/managerLogin.jsp").forward(request,response);
        }else if(url.contains("/writer")||url.contains("/write")||url.contains("manageWrite")){
            request.getRequestDispatcher("/JSP/login_writer.jsp").forward(request,response);
        }
        return false;
    }

    //请求处理后没有到view拦截
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable ModelAndView modelAndView) throws Exception {

    }

    //全部处理完之后了拦截 （关闭）
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {

    }
}
