package com.spb.subject.order.domain;

public class CartVO {
    private int cart_num;
    private int uid;
    private int product_id;
    private String product_name;
    private int product_price;
    private String img_name;
    private int count;
    private int price;
    public int getCart_num() {
        return cart_num;
    }
    public void setCart_num(int cart_num) {
        this.cart_num = cart_num;
    }
    public int getUid() {
        return uid;
    }
    public void setUid(int uid) {
        this.uid = uid;
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
    
    public String getProduct_name() {
        return product_name;
    }
    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }
    public int getProduct_price() {
        return product_price;
    }
    public void setProduct_price(int product_price) {
        this.product_price = product_price;
    }
    public String getImg_name() {
        return img_name;
    }
    public void setImg_name(String img_name) {
        this.img_name = img_name;
    }
    
    
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    @Override
    public String toString() {
        return "CartVO [cart_num=" + cart_num + ", uid=" + uid + ", product_id=" + product_id + ", product_name="
                + product_name + ", product_price=" + product_price + ", img_name=" + img_name + ", count=" + count
                + "]";
    }
    
}
