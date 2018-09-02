package com.spb.subject.order.mapper;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.spb.subject.order.domain.CartVO;
import com.spb.subject.order.domain.OrderDetailVO;
import com.spb.subject.order.domain.OrderVO;
import com.spb.subject.order.domain.ProductVO;

@Repository("com.spb.subject.order.mapper.OrderMapper")
public interface OrderMapper {

    public ArrayList<ProductVO> productList() throws Exception;

    public ProductVO productDetail(int product_id) throws Exception;

    public void ordersInsert(OrderVO ordervo) throws Exception;

    public void orderDetailInsert(int uid) throws Exception;

    public ArrayList<OrderVO> orderList(int uid) throws Exception;

    public ArrayList<OrderDetailVO> orderDetail(int order_id) throws Exception;

    // cart add
    public void cartInsert(CartVO cartvo) throws Exception;

    // cart list
    public ArrayList<CartVO> cartList(int uid) throws Exception;

    // cart Detele
    public void cartDelete(int uid) throws Exception;

    public int sumPrice(int uid) throws Exception;

    public void cartcountUpdate(CartVO cartvo) throws Exception;
}
