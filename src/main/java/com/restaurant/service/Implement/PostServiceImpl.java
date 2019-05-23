package com.restaurant.service.Implement;

import com.restaurant.entity.Comment;
import com.restaurant.entity.CommentExample;
import com.restaurant.entity.Post;
import com.restaurant.entity.PostExample;
import com.restaurant.mapper.CommentMapper;
import com.restaurant.mapper.PostMapper;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl {
    @Autowired
    private PostMapper postMapper;
    @Autowired
    private CommentMapper commentMapper;

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

    public Post getAPost(Integer postId) {
        PostExample postExample = new PostExample();
        postExample.createCriteria().andIdEqualTo(postId);
        Post post = postMapper.selectByExample(postExample).get(0);
        CommentExample commentExample = new CommentExample();
        commentExample.createCriteria().andTopostidEqualTo(postId);
        List<Comment> comments = commentMapper.selectByExample(commentExample);
        post.setComments(comments);
        return post;
    }

    public List<Post> getAllPosts() {
        PostExample postExample = new PostExample();
        postExample.createCriteria().andTitleLike("%%");
        return postMapper.selectByExample(postExample);
    }
}
