package com.spb.subject.order.domain;

public class OrderDetailVO {
    private int uid;
    private int order_detail;
    private int order_id;
    private int product_id;
    private int count;
    private int orderdetail_price;
    private String product_name;
    private String img_name;
    private String order_email;
    private String order_name;
    private String order_tel;
    private String d_name;
    private String d_tel;
    private String d_address1;
    private String d_address2;
    
    
    public String getProduct_name() {
        return product_name;
    }
    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }
    public String getImg_name() {
        return img_name;
    }
    public void setImg_name(String img_name) {
        this.img_name = img_name;
    }
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
    }
    public int getOrder_detail() {
        return order_detail;
    }
    public void setOrder_detail(int order_detail) {
        this.order_detail = order_detail;
    }
    public int getOrder_id() {
        return order_id;
    }
    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }
    public int getProduct_id() {
        return product_id;
    }
    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public int getOrderdetail_price() {
        return orderdetail_price;
    }
    public void setOrderdetail_price(int orderdetail_price) {
        this.orderdetail_price = orderdetail_price;
    }
    
   
    public String getOrder_email() {
        return order_email;
    }
    public void setOrder_email(String order_email) {
        this.order_email = order_email;
    }
    public String getOrder_name() {
        return order_name;
    }
    public void setOrder_name(String order_name) {
        this.order_name = order_name;
    }
    public String getOrder_tel() {
        return order_tel;
    }
    public void setOrder_tel(String order_tel) {
        this.order_tel = order_tel;
    }
    public String getD_name() {
        return d_name;
    }
    public void setD_name(String d_name) {
        this.d_name = d_name;
    }
    public String getD_tel() {
        return d_tel;
    }
    public void setD_tel(String d_tel) {
        this.d_tel = d_tel;
    }
    public String getD_address1() {
        return d_address1;
    }
    public void setD_address1(String d_address1) {
        this.d_address1 = d_address1;
    }
    public String getD_address2() {
        return d_address2;
    }
    public void setD_address2(String d_address2) {
        this.d_address2 = d_address2;
    }
    
    
}
