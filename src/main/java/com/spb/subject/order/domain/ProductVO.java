package com.spb.subject.order.domain;

public class ProductVO {
    private int product_id;
    private String product_name;
    private String product_price;
    private String img_name;
    private int category;
    public int getProduct_id() {
        return product_id;
    }
    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }
    public String getProduct_name() {
        return product_name;
    }
    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }
    public String getProduct_price() {
        return product_price;
    }
    public void setProduct_price(String product_price) {
        this.product_price = product_price;
    }
    public String getImg_name() {
        return img_name;
    }
    public void setImg_name(String img_name) {
        this.img_name = img_name;
    }
    public int getCategory() {
        return category;
    }
    public void setCategory(int category) {
        this.category = category;
    }
    @Override
    public String toString() {
        return "ProductVO [product_id=" + product_id + ", product_name=" + product_name + ", product_price="
                + product_price + ", img_name=" + img_name + ", category=" + category + "]";
    }
    
}
