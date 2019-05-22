package com.restaurant.entity;

import java.util.Date;

public class Comment extends CommentKey {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column comment.UserName
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    private String username;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column comment.Content
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    private String content;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column comment.time
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    private Date time;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column comment.toMenuId
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    private Integer tomenuid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column comment.score
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    private Integer score;

    private RestaurantReply restaurantReply;

    public RestaurantReply getRestaurantReply() {
        return restaurantReply;
    }

    public void setRestaurantReply(RestaurantReply restaurantReply) {
        this.restaurantReply = restaurantReply;
    }


    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column comment.UserName
     *
     * @return the value of comment.UserName
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column comment.UserName
     *
     * @param username the value for comment.UserName
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column comment.Content
     *
     * @return the value of comment.Content
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column comment.Content
     *
     * @param content the value for comment.Content
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column comment.time
     *
     * @return the value of comment.time
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public Date getTime() {
        return time;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column comment.time
     *
     * @param time the value for comment.time
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column comment.toMenuId
     *
     * @return the value of comment.toMenuId
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public Integer getTomenuid() {
        return tomenuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column comment.toMenuId
     *
     * @param tomenuid the value for comment.toMenuId
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public void setTomenuid(Integer tomenuid) {
        this.tomenuid = tomenuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column comment.score
     *
     * @return the value of comment.score
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public Integer getScore() {
        return score;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column comment.score
     *
     * @param score the value for comment.score
     *
     * @mbg.generated Tue Mar 12 15:33:47 CST 2019
     */
    public void setScore(Integer score) {
        this.score = score;
    }
}