package com.restaurant.service.Implement;

import com.restaurant.entity.*;
import com.restaurant.mapper.*;
import com.restaurant.service.Interface.RestaurantService;
import org.omg.CORBA.INTERNAL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {
    @Autowired
    private RestaurantMapper restaurantMapper;
    @Autowired
    private MenuMapper menuMapper;
    @Autowired
    private NoticeMapper noticeMapper;
    @Autowired
    private PostMapper postMapper;
    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private RestaurantReplyMapper restaurantReplyMapper;

    public boolean loginCheck(Restaurant restaurant){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andIdEqualTo(restaurant.getId());
        List<Restaurant> restaurantList = restaurantMapper.selectByExample(restaurantExample);
        if(restaurantList.size()<1)
            return false;
        if(restaurantList.get(0).getPassword().equals(restaurant.getPassword()))
            return true;
        return false;
    }

    public void registerARestaurant(Restaurant restaurant){
        restaurantMapper.insert(restaurant);
    }

    public boolean isTheWindowManaging(int id){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andIdEqualTo(id);
        List<Restaurant> restaurantList = restaurantMapper.selectByExample(restaurantExample);
        if(restaurantList.size() != 0 && !restaurantList.get(0).getPassword().equals(""))
            return true;
        return false;
    }

    public void addMenu(Menu menu){
        menuMapper.insert(menu);
    }

    public void alterMenu(Menu menu){
        menuMapper.updateByPrimaryKey(menu);
    }

    public Menu selectAMenu(int menuId){
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andMenuidEqualTo(menuId);
        List<Menu> menuList = menuMapper.selectByExample(menuExample);
        Menu menu = menuList.size()==0 ? null : menuList.get(0);
        if(menu != null){
            RestaurantExample restaurantExample = new RestaurantExample();
            restaurantExample.createCriteria().andIdEqualTo(menu.getRestaurantid());
            Restaurant restaurant = restaurantMapper.selectByExample(restaurantExample).get(0);
            menu.setRestaurant(restaurant);
        }
        return menu;
    }

    public boolean removeAMenu(int menuId){
        MenuExample menuExample = new MenuExample();
        menuExample.createCriteria().andMenuidEqualTo(menuId);
        return menuMapper.deleteByExample(menuExample) == 1 ? true :false;
    }

    public void PushANotice(Notice notice){
        NoticeExample noticeExample = new NoticeExample();
        noticeExample.createCriteria().andRestaurantidEqualTo(notice.getRestaurantid());
        List<Notice> notices = noticeMapper.selectByExample(noticeExample);
        if(notices.size() == 0){
            noticeMapper.insert(notice);
            return;
        }
        notices.get(0).setContent(notice.getContent());
        notices.get(0).setTitle(notice.getTitle());
        notices.get(0).setTime( new Date());
        noticeMapper.updateByExample(notices.get(0),noticeExample);
    }

    public List<Menu> getAllMenuOf(int restaurantId){
        MenuExample menuExample= new MenuExample();
        menuExample.createCriteria().andRestaurantidEqualTo(restaurantId);
        List<Menu> list = menuMapper.selectByExample(menuExample);

        for(Menu menu: list){
            PostExample postExample = new PostExample();
            postExample.createCriteria().andRestaurantidEqualTo(menu.getRestaurantid());
            postExample.createCriteria().andMenuidEqualTo(menu.getMenuid());
            List<Post> posts= postMapper.selectByExample(postExample);
            CommentExample commentExample = new CommentExample();
            commentExample.createCriteria().andTomenuidEqualTo(menu.getMenuid());
            List<Comment> comments = commentMapper.selectByExample(commentExample);

            Integer sumScoreNum = posts != null? posts.size() : 0;
            sumScoreNum += comments != null ? comments.size() : 0;

            Integer perfectScore = 0;
            Integer goodScore = 0;
            Integer badScore = 0;

            for(Post post : posts){
                if(post.getScore() == 5)
                    perfectScore++;
                if(post.getScore() < 5 && post.getScore() >= 4)
                    goodScore++;
                if(post.getScore()<=3)
                    badScore++;
            }
            for (Comment comment : comments) {
                if (comment.getScore() == 5)
                    perfectScore++;
                if (comment.getScore() < 5 && comment.getScore() >= 4)
                    goodScore++;
                if (comment.getScore() <= 3)
                    badScore++;
            }

            menu.setPerfectScoreNum((perfectScore+0.0)/sumScoreNum);
            menu.setGoodScoreNum((goodScore+0.0)/sumScoreNum);
            menu.setBadScoreNum((badScore+0.0)/sumScoreNum);
        }
        return list;
    }

    @Override
    public Restaurant getRestaurant(int restaurantId) {
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andIdEqualTo(restaurantId);
        List<Restaurant> restaurantList = restaurantMapper.selectByExample(restaurantExample);
        Restaurant restaurant = restaurantList.size() == 1 ? restaurantList.get(0) :null;
        return restaurant;
    }

    @Override
    public List<Restaurant> getAllRestaurants() {
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andNameIsNotNull();
        return restaurantMapper.selectByExample(restaurantExample);
    }

    @Override
    public void replyUser(RestaurantReply restaurantReply) {
        restaurantReplyMapper.insert(restaurantReply);
    }

    @Override
    public Notice getNotice(Integer restaurantId) {
        NoticeExample noticeExample = new NoticeExample();
        noticeExample.createCriteria().andRestaurantidEqualTo(restaurantId);
        List<Notice> notices = noticeMapper.selectByExample(noticeExample);
        if(notices.size() == 0)
            return null;
        return notices.get(0);
    }

    @Override
    public void  getRestaurantsOfCompany(HttpServletRequest request,String company){
        RestaurantExample restaurantExample = new RestaurantExample();
        restaurantExample.createCriteria().andCompanyLike(company);
        request.setAttribute("restaurantsOfCompany",restaurantMapper.selectByExample(restaurantExample)); ;
    }
}
