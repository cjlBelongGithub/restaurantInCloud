package com.restaurant.service.Implement;

import com.restaurant.entity.*;
import com.restaurant.mapper.MenuMapper;
import com.restaurant.mapper.PostMapper;
import com.restaurant.mapper.RestaurantMapper;
import com.restaurant.service.Interface.HomePageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomePageServiceImpl implements HomePageService {
    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private RestaurantMapper restaurantMapper;

    @Autowired
    private PostMapper postMapper;

    public List<Menu> getMenuLike(SearchCondition searchCondition){
        MenuExample menuExample = new MenuExample();

        RestaurantExample restaurantExample = new RestaurantExample();

        if (searchCondition.getMenuName()!=null)
            menuExample.createCriteria().andNameLike(searchCondition.getMenuName());
        if (searchCondition.getCookWay()!=null)
            menuExample.createCriteria().andCookwayLike(searchCondition.getCookWay());
        if (searchCondition.getMenuId() > 0 )
            menuExample.createCriteria().andMenuidEqualTo(searchCondition.getMenuId());
        if (searchCondition.getSpicy() > -1)
            menuExample.createCriteria().andNameLike(searchCondition.getMenuName());

        System.out.println();

        List<Menu> menuList = menuMapper.selectByExample(menuExample);
        for(int i = 0 ; i <menuList.size(); i++){
            restaurantExample.createCriteria().andIdEqualTo(menuList.get(i).getRestaurantid());
            Restaurant restaurant = restaurantMapper.selectByExample(restaurantExample).get(0);
            menuList.get(i).setRestaurant(restaurant);
        }
        return menuList;
    }

    public List<Restaurant> getRestaurantLike(SearchCondition searchCondition){
        RestaurantExample restaurantExample = new RestaurantExample();

        if(searchCondition.getRestaurantName() != null)
            restaurantExample.createCriteria().andNameLike(searchCondition.getRestaurantName());
        if (searchCondition.getRestaurantId() > -1)
            restaurantExample.createCriteria().andIdEqualTo(searchCondition.getRestaurantId());
        if (searchCondition.getLowCredit() != 0)
            restaurantExample.createCriteria().andCreditGreaterThanOrEqualTo(searchCondition.getLowCredit());
        if (searchCondition.getHighCredit() <= 100)
            restaurantExample.createCriteria().andCreditLessThanOrEqualTo(searchCondition.getHighCredit());

        return restaurantMapper.selectByExample(restaurantExample);
    }

    @Override
    public List<Post> getPostLike(SearchCondition searchCondition) {
        PostExample postExample = new PostExample();

        if(searchCondition.getRestaurantId() != -1)
            postExample.createCriteria().andRestaurantidEqualTo(searchCondition.getRestaurantId());
        postMapper.selectByExample(postExample);
        return null;
    }

    @Override
    public List<Menu> getMenuNameLike(String keyWord) {
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andNameLike("%"+keyWord+"%");
        return menuMapper.selectByExample(menuExample);
    }

    @Override
    public List<Restaurant> getRestaurantNameLike(String keyWord) {
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andNameLike("%"+keyWord+"%");
        return restaurantMapper.selectByExample(restaurantExample);
    }

    @Override
    public List<Post> getPostNameLike(String keyWord) {
        PostExample postExample = new PostExample();
        postExample.createCriteria().andTitleLike("%"+keyWord+"%");
        return postMapper.selectByExample(postExample);
    }

}
