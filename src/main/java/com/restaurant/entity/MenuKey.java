package com.restaurant.entity;

public class MenuKey {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.MenuId
     *
     * @mbg.generated Thu Feb 28 13:11:42 CST 2019
     */
    private Integer menuid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column menu.RestaurantId
     *
     * @mbg.generated Thu Feb 28 13:11:42 CST 2019
     */
    private Integer restaurantid;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.MenuId
     *
     * @return the value of menu.MenuId
     *
     * @mbg.generated Thu Feb 28 13:11:42 CST 2019
     */
    public Integer getMenuid() {
        return menuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.MenuId
     *
     * @param menuid the value for menu.MenuId
     *
     * @mbg.generated Thu Feb 28 13:11:42 CST 2019
     */
    public void setMenuid(Integer menuid) {
        this.menuid = menuid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column menu.RestaurantId
     *
     * @return the value of menu.RestaurantId
     *
     * @mbg.generated Thu Feb 28 13:11:42 CST 2019
     */
    public Integer getRestaurantid() {
        return restaurantid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column menu.RestaurantId
     *
     * @param restaurantid the value for menu.RestaurantId
     *
     * @mbg.generated Thu Feb 28 13:11:42 CST 2019
     */
    public void setRestaurantid(Integer restaurantid) {
        this.restaurantid = restaurantid;
    }
}