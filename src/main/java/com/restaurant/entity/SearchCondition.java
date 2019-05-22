package com.restaurant.entity;

public class SearchCondition {

    private int RestaurantId;
    private String RestaurantName;
    private int MenuId;
    private String MenuName;
    private String Position;
    private String CookWay;
    private int Spicy;

    private int LowCredit;
    private int HighCredit;

    private int length;//所需记录数


    public SearchCondition() {
        RestaurantId = -1;
        RestaurantName = null;
        MenuId = -1;
        MenuName =null;
        Position = null;
        CookWay = null;
        Spicy = -1;
        LowCredit = 0;
        HighCredit = 100;
    }

    public SearchCondition(String searchCondition) {
        RestaurantId = -1;
        RestaurantName = searchCondition;
        MenuId = -1;
        MenuName = searchCondition;
        Position = searchCondition;
        CookWay = searchCondition;
        Spicy = -1;
        LowCredit = 0;
        HighCredit = 100;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public int getLowCredit() {
        return LowCredit;
    }

    public void setLowCredit(int lowCredit) {
        LowCredit = lowCredit;
    }

    public int getHighCredit() {
        return HighCredit;
    }

    public void setHighCredit(int highCredit) {
        HighCredit = highCredit;
    }

    public int getRestaurantId() {
        return RestaurantId;
    }

    public void setRestaurantId(int restaurantId) {
        RestaurantId = restaurantId;
    }

    public String getRestaurantName() {
        return RestaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        RestaurantName = restaurantName;
    }

    public int getMenuId() {
        return MenuId;
    }

    public void setMenuId(int menuId) {
        MenuId = menuId;
    }

    public String getMenuName() {
        return MenuName;
    }

    public void setMenuName(String menuName) {
        MenuName = menuName;
    }

    public String getPosition() {
        return Position;
    }

    public void setPosition(String position) {
        Position = position;
    }

    public String getCookWay() {
        return CookWay;
    }

    public void setCookWay(String cookWay) {
        CookWay = cookWay;
    }

    public int getSpicy() {
        return Spicy;
    }

    public void setSpicy(int spicy) {
        Spicy = spicy;
    }
}
