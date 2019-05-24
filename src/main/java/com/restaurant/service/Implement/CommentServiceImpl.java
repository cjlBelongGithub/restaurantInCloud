package com.restaurant.service.Implement;

import com.restaurant.entity.Comment;
import com.restaurant.entity.CommentExample;
import com.restaurant.mapper.CommentMapper;
import com.restaurant.service.Interface.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentServiceImpl implements CommentService{
    @Autowired
    private CommentMapper commentMapper;

    public void addAComment(Comment comment){
        commentMapper.insert(comment);
    }

    public List<Comment> getAllCommentOfMenu(Integer menuId){
        CommentExample commentExample = new CommentExample();
        commentExample.createCriteria().andTomenuidEqualTo(menuId);
        return commentMapper.selectByExample(commentExample);
    }

    @Override
    public List<Comment> getAllCommentSendBy(Integer uid) {
        CommentExample commentExample = new CommentExample();
        commentExample.createCriteria().andUseridEqualTo(uid);
        return commentMapper.selectByExample(commentExample);
    }
}
