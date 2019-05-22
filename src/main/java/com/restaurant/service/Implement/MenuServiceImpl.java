package com.restaurant.service.Implement;

import com.restaurant.entity.*;
import com.restaurant.mapper.MenuMapper;
import com.restaurant.mapper.PostMapper;
import com.restaurant.mapper.RestaurantMapper;
import com.restaurant.mapper.LikeMenuMapper;
import com.restaurant.service.Interface.MenuService;
import org.omg.CORBA.INTERNAL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private RestaurantMapper restaurantMapper;

    @Autowired
    private PostMapper postMapper;

    @Autowired
    private LikeMenuMapper likeMenuMapper;

    public List<Menu> getRecommendMenu(Integer userId){
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andSpicyIsNotNull();
        List<Menu> menuList = menuMapper.selectByExample(menuExample);
        fullMenusInformation(menuList,userId);
        return menuList;
    }

    public List<Restaurant> getRecommendRestaurant(){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andCreditGreaterThanOrEqualTo(75);
        List<Restaurant> restaurantList = restaurantMapper.selectByExample(restaurantExample);
        return restaurantList;
    }

    @Override
    public List<Menu> getTheMenuCookWayLike(String name) {
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andCookwayLike(name);
        return menuMapper.selectByExample(menuExample);
    }

    public void fullMenusInformation(List<Menu> menuList,Integer userId){
        for(Menu menu :menuList){
            RestaurantExample restaurantExample = new RestaurantExample();
            restaurantExample.createCriteria().andIdEqualTo(menu.getRestaurantid());
            menu.setRestaurant(restaurantMapper.selectByExample(restaurantExample).get(0));

            PostExample postExample = new PostExample();
            postExample.createCriteria().andRestaurantidEqualTo(menu.getRestaurantid());
            postExample.createCriteria().andMenuidEqualTo(menu.getMenuid());
            List<Post> posts= postMapper.selectByExample(postExample);

            menu.setPostNum(posts.size());

            Integer score = 0;

            for (Post post: posts)
                score += post.getScore();
            if(posts.size() != 0)
                score /= posts.size();
            menu.setScore(score);

            likeMenuExample likeMenuExample = new likeMenuExample();
            if(userId != null)
                likeMenuExample.createCriteria().andMenuidEqualTo(menu.getMenuid()).andUseridEqualTo(userId);
            if(userId == null || likeMenuMapper.selectByExample(likeMenuExample).size() == 0 )
                menu.setLiked(false);
            else{
                menu.setLiked(true);
            }
        }
    }

    @Override
    public boolean likeMenu(likeMenu likeMenu) {
        likeMenuExample likeMenuExample = new likeMenuExample();
        likeMenuExample.createCriteria().andMenuidEqualTo(likeMenu.getMenuid());
        likeMenuExample.createCriteria().andUseridEqualTo(likeMenu.getUserid());
        if(likeMenuMapper.selectByExample(likeMenuExample).size() == 0){
            return likeMenuMapper.insert(likeMenu) == 1;
        }
        return !removeLikeMenu(likeMenu);
    }

    @Override
    public boolean removeLikeMenu(likeMenu likeMenu) {
        likeMenuExample likeMenuExample = new likeMenuExample();
        likeMenuExample.createCriteria().andMenuidEqualTo(likeMenu.getMenuid());
        likeMenuExample.createCriteria().andUseridEqualTo(likeMenu.getUserid());
        return likeMenuMapper.deleteByExample(likeMenuExample) == 1;
    }

    @Override
    public List<likeMenu> allMyLikeMenu(Integer userId) {
        likeMenuExample likeMenuExample = new likeMenuExample();
        likeMenuExample.createCriteria().andUseridEqualTo(userId);
        List<likeMenu> likeMenuList = likeMenuMapper.selectByExample(likeMenuExample);
        List<Menu> menuList = new ArrayList<>();
        for(likeMenu likeMenu : likeMenuList){
            MenuExample menuExample = new MenuExample();
            menuExample.createCriteria().andMenuidEqualTo(likeMenu.getMenuid());
            List<Menu> menus = menuMapper.selectByExample(menuExample);
            likeMenu.setMenu(menus == null ? null:menus.get(0));
        }
        return likeMenuList;
    }

    @Override
    public Menu getAMenu(Integer menuId) {
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andMenuidEqualTo(menuId);
        List<Menu> menuList = menuMapper.selectByExample(menuExample);
        Menu menu = null;
        if(menuList != null)
            menu = menuList.get(0);
        return menu;
    }

    @Override
    public void alterAMenu(Menu menu) {
        Integer menuId = menu.getMenuid();
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andMenuidEqualTo(menuId);
        menuMapper.updateByExample(menu,menuExample);
    }

    @Override
    public void removeAMenu(Integer menuId) {
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andMenuidEqualTo(menuId);
        menuMapper.deleteByExample(menuExample);
    }

    @Override
    public void addMenu(Menu menu) {
        menuMapper.insert(menu);
    }


}
