package com.restaurant.service.Interface;

import com.restaurant.entity.User;
import com.restaurant.entity.UserExample;
import com.restaurant.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public User getInformation(User user){
        UserExample userExample = new UserExample();
        userExample.createCriteria().andXhidEqualTo(user.getXhid());
        List<User> users = userMapper.selectByExample(userExample);
        if(users.size() == 1)
            return users.get(0);
        return null;
    }

    public boolean checkXHIdForChangeInformation(User user){
        UserExample userExample = new UserExample();
        userExample.createCriteria().andXhidEqualTo(user.getXhid());
        List<User> users = userMapper.selectByExample(userExample);
        if(users == null || users.get(0).getUid() == user.getUid())
            return true;
        return false;
    }

    public boolean changePassword(String password,Integer userId){
        try {
            UserExample userExample = new UserExample();
            userExample.createCriteria().andUidEqualTo(userId);
            User user = userMapper.selectByExample(userExample).get(0);
            user.setPassword(password);
            userMapper.updateByExample(user,userExample);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    public boolean rewriteShortSaying(String shortSaying ,Integer userId){
        try {
            UserExample userExample = new UserExample();
            userExample.createCriteria().andUidEqualTo(userId);
            User user = userMapper.selectByExample(userExample).get(0);
            user.setShortsaying(shortSaying);
            userMapper.updateByExample(user,userExample);
            return true;
        }catch (Exception e){
            return false;
        }
    }


    public boolean rewriteGender(String gender, Integer uid) {
        try {
            UserExample userExample = new UserExample();
            userExample.createCriteria().andUidEqualTo(uid);
            User user = userMapper.selectByExample(userExample).get(0);
            user.setGender(gender);
            userMapper.updateByExample(user,userExample);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    public boolean rewriteName(String name, Integer uid) {
        try {
            UserExample userExample = new UserExample();
            userExample.createCriteria().andUidEqualTo(uid);
            User user = userMapper.selectByExample(userExample).get(0);
            user.setName(name);
            userMapper.updateByExample(user,userExample);
            return true;
        }catch (Exception e){
            return false;
        }
    }
}
