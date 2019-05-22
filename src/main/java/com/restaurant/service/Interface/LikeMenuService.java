package com.restaurant.service.Interface;

import com.restaurant.entity.likeMenu;
import com.restaurant.entity.likeMenuExample;
import com.restaurant.mapper.LikeMenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LikeMenuService {
    @Autowired
    private LikeMenuMapper likeMenuMapper;

    public void addAnLikeMenu(likeMenu likeMenu){
        likeMenuMapper.insert(likeMenu);
    }

    public Integer removeAnLikeMenu(Integer userId,Integer menuId){
        likeMenuExample likeMenuExample = new likeMenuExample();
        likeMenuExample.createCriteria().andUseridEqualTo(userId).andMenuidEqualTo(menuId);
        return likeMenuMapper.deleteByExample(likeMenuExample);
    }
}
