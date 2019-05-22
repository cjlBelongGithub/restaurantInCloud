package com.restaurant.service.Implement;

import com.restaurant.entity.*;
import com.restaurant.mapper.MenuMapper;
import com.restaurant.mapper.NoticeMapper;
import com.restaurant.mapper.RestaurantMapper;
import com.restaurant.mapper.RestaurantReplyMapper;
import com.restaurant.service.Interface.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {
    @Autowired
    private RestaurantMapper restaurantMapper;
    @Autowired
    private MenuMapper menuMapper;
    @Autowired
    private NoticeMapper noticeMapper;

    @Autowired
    private RestaurantReplyMapper restaurantReplyMapper;

    public boolean loginCheck(Restaurant restaurant){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andIdEqualTo(restaurant.getId());
        List<Restaurant> restaurantList = restaurantMapper.selectByExample(restaurantExample);
        if(restaurantList.size()<1)
            return false;
        if(restaurantList.get(0).getPassword().equals(restaurant.getPassword()))
            return true;
        return false;
    }

    public void registerARestaurant(Restaurant restaurant){
        restaurantMapper.insert(restaurant);
    }

    public boolean isTheWindowManaging(int id){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andIdEqualTo(id);
        List<Restaurant> restaurantList = restaurantMapper.selectByExample(restaurantExample);
        if(restaurantList.size() != 0 && !restaurantList.get(0).getPassword().equals(""))
            return true;
        return false;
    }

    public void addMenu(Menu menu){
        menuMapper.insert(menu);
    }

    public void alterMenu(Menu menu){
        menuMapper.updateByPrimaryKey(menu);
    }

    public Menu selectAMenu(int menuId){
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andMenuidEqualTo(menuId);
        List<Menu> menuList = menuMapper.selectByExample(menuExample);
        Menu menu = menuList.size()==0 ? null : menuList.get(0);
        if(menu != null){
            RestaurantExample restaurantExample = new RestaurantExample();
            restaurantExample.createCriteria().andIdEqualTo(menu.getRestaurantid());
            Restaurant restaurant = restaurantMapper.selectByExample(restaurantExample).get(0);
            menu.setRestaurant(restaurant);
        }
        return menu;
    }

    public boolean removeAMenu(int menuId){
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andMenuidEqualTo(menuId);
        return menuMapper.deleteByExample(menuExample) == 1 ? true :false;
    }

    public void PushANotice(Notice notice){
        NoticeExample noticeExample = new NoticeExample();
        noticeExample.createCriteria().andRestaurantidEqualTo(notice.getRestaurantid());
        List<Notice> notices = noticeMapper.selectByExample(noticeExample);
        if(notices.size() == 0){
            noticeMapper.insert(notice);
            return;
        }
        notices.get(0).setContent(notice.getContent());
        notices.get(0).setTitle(notice.getTitle());
        notices.get(0).setTime( new Date());
        noticeMapper.updateByExample(notices.get(0),noticeExample);
    }

    public List<Menu> getAllMenuOf(int restaurantId){
        MenuExample menuExample= new MenuExample();
        menuExample.createCriteria().andRestaurantidEqualTo(restaurantId);
        return menuMapper.selectByExample(menuExample);
    }

    @Override
    public Restaurant getRestaurant(int restaurantId) {
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andIdEqualTo(restaurantId);
        List<Restaurant> restaurantList = restaurantMapper.selectByExample(restaurantExample);
        Restaurant restaurant = restaurantList.size() == 1 ? restaurantList.get(0) :null;
        return restaurant;
    }

    @Override
    public List<Restaurant> getAllRestaurants() {
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andNameIsNotNull();
        return restaurantMapper.selectByExample(restaurantExample);
    }

    @Override
    public void replyUser(RestaurantReply restaurantReply) {
        restaurantReplyMapper.insert(restaurantReply);
    }

    @Override
    public Notice getNotice(Integer restaurantId) {
        NoticeExample noticeExample = new NoticeExample();
        noticeExample.createCriteria().andRestaurantidEqualTo(restaurantId);
        List<Notice> notices = noticeMapper.selectByExample(noticeExample);
        if(notices.size() == 0)
            return null;
        return notices.get(0);
    }

    @Override
    public void  getRestaurantsOfCompany(HttpServletRequest request,String company){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andCompanyLike(company);
        request.setAttribute("restaurantsOfCompany",restaurantMapper.selectByExample(restaurantExample)); ;
    }
}
