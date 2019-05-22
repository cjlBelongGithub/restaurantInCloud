package com.restaurant.service.Implement;

import com.restaurant.entity.*;
import com.restaurant.mapper.CompanyMapper;
import com.restaurant.mapper.MenuMapper;
import com.restaurant.mapper.PostMapper;
import com.restaurant.mapper.RestaurantMapper;
import com.restaurant.service.Interface.HeaderService;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Service
public class HeaderServiceImpl implements HeaderService{
    @Autowired
    private RestaurantMapper restaurantMapper;
    @Autowired
    private MenuMapper menuMapper;
    @Autowired
    private PostMapper postMapper;
    @Autowired
    private CompanyMapper companyMapper;

    public void getAllRestaurantCompany(HttpServletRequest request){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andCompanyIsNotNull();
        request.setAttribute("restaurantCompany",restaurantMapper.selectByExample(restaurantExample));
    }

    @Override
    public void getHotFoodTopFive(HttpServletRequest request) {
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andSpicyIsNotNull();
        request.setAttribute("hotFood",menuMapper.selectByExample(menuExample).subList(0,5));
    }

    @Override
    public Company getAllRestaurantByPosition(String position) {
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andPositionEqualTo(position);
        List<Restaurant> restaurants = restaurantMapper.selectByExample(restaurantExample);
        for(Restaurant restaurant :restaurants){
            PostExample postExample = new PostExample();
            postExample.createCriteria().andRestaurantidEqualTo(restaurant.getId());
            List<Post> posts = postMapper.selectByExample(postExample);
            int score = 0;
            for (Post post : posts){
                score += post.getScore();
            }
            if(posts.size() != 0)
                score /= posts.size();
            restaurant.setScore(score);
        }
        if(restaurants.size() > 0) {
            CompanyExample companyExample = new CompanyExample();
            companyExample.createCriteria().andIdEqualTo(Integer.parseInt(restaurants.get(0).getCompany()));
            Company company = companyMapper.selectByExample(companyExample).get(0);
            company.setRestaurants(restaurants);
            return company;
        }else {
            return null;
        }
    }


}
