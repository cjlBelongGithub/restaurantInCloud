package com.restaurant.service.Implement;

import com.restaurant.entity.Restaurant;
import com.restaurant.entity.RestaurantExample;
import com.restaurant.entity.User;
import com.restaurant.entity.UserExample;
import com.restaurant.mapper.RestaurantMapper;
import com.restaurant.mapper.UserMapper;
import com.restaurant.service.Interface.LoginAndRegisterService;
import com.restaurant.service.Interface.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoginAndRegisterServiceImpl implements LoginAndRegisterService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RestaurantMapper restaurantMapper;

    @Override
    public User login(User user) {
        UserExample userExample = new UserExample();
        userExample.createCriteria().andNameEqualTo(user.getName());
        List<User> users = userMapper.selectByExample(userExample);
        if(users.size() != 0 && users.get(0).getPassword().equals(user.getPassword()))
            return users.get(0);
        return null;
    }

    @Override
    public boolean register(User user) {
        return userMapper.insert(user) == 1 ? true : false;
    }

    @Override
    public boolean isXHIdAlreadyExist(int id) {
        UserExample userExample = new UserExample();
        userExample.createCriteria().andXhidEqualTo(id);
        return userMapper.selectByExample(userExample).size()>0;
    }

    @Override
    public boolean loginForRestaurant(Restaurant restaurant) {
        return restaurantMapper.selectByPrimaryKey(restaurant.getId()).getPassword().equals(restaurant.getPassword());
    }

    @Override
    public boolean registerForRes(Restaurant restaurant) {
        Restaurant restaurant1 = restaurantMapper.selectByPrimaryKey(restaurant.getId());
        if(restaurant1 != null){
            restaurant1.setPassword(restaurant.getPassword());
            restaurant1.setShortsaying(restaurant.getShortsaying());
            restaurant1.setLogo(restaurant.getLogo());/*改成默认（或用户选择）logo方式，或者在用户成功注册后上传logo图片*/
            return true;
        }else{
            return false;
        }

    }

    @Override
    public boolean isNameAlreadyExist(String name) {
        UserExample userExample = new UserExample();
        userExample.createCriteria().andNameEqualTo(name);
        return userMapper.selectByExample(userExample).size() == 0;//false 为存在，true 为不存在
    }
}
