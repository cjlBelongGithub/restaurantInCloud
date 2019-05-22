package com.restaurant.service.Implement;

import com.restaurant.entity.Post;
import com.restaurant.entity.PostExample;
import com.restaurant.mapper.PostMapper;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl {
    @Autowired
    private PostMapper postMapper;

    public List<Post> postSendBy(int userId){
        PostExample example = new PostExample();
        example.createCriteria().andUseridEqualTo(userId);
        return postMapper.selectByExample(example);
    }

    public void addAPost(Post post){
        postMapper.insert(post);
    }

    public List<Post> allPostsOfCompany(Integer restaurantId){
        PostExample postExample = new PostExample();
        postExample.createCriteria().andRestaurantidEqualTo(restaurantId);
        return postMapper.selectByExample(postExample);
    }

    public List<Post> allPostOfUser(Integer userId){
        PostExample postExample = new PostExample();
        postExample.createCriteria().andUseridEqualTo(userId);
        return postMapper.selectByExample(postExample);
    }

    public void removeAPost(Integer postId){
        PostExample postExample = new PostExample();
        postExample.createCriteria().andIdEqualTo(postId);
        postMapper.deleteByExample(postExample);
    }
}
