package com.restaurant.service.Interface;

import com.restaurant.entity.Comment;
import org.springframework.stereotype.Service;

import java.util.List;

public interface CommentService {
    void addAComment(Comment comment);
    public List<Comment> getAllCommentOfMenu(Integer menuId);

}
