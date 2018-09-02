package com.spb.subject.order.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spb.subject.order.domain.CartVO;
import com.spb.subject.order.domain.OrderDetailVO;
import com.spb.subject.order.domain.OrderVO;
import com.spb.subject.order.domain.ProductVO;
import com.spb.subject.order.mapper.OrderMapper;

@Service("com.spb.subject.order.service.OrderService")
public class OrderService {
    @Resource(name="com.spb.subject.order.mapper.OrderMapper")
    OrderMapper orderMapper;
    
    public ArrayList<ProductVO> productListService() throws Exception{
        return orderMapper.productList();
    }
    public ProductVO productDetailService(int product_id) throws Exception{
        return orderMapper.productDetail(product_id);
    }
    
    public ArrayList<OrderVO> orderList(int uid) throws Exception{
        return orderMapper.orderList(uid);
    }
    public ArrayList<OrderDetailVO> orderDetail(int order_id) throws Exception{
        return orderMapper.orderDetail(order_id);
    }
    
    public void ordersInsertService(OrderVO ordervo) throws Exception{
        orderMapper.ordersInsert(ordervo);
    }
    public void orderDetailInsertService(int uid) throws Exception{
        orderMapper.orderDetailInsert(uid);
    }
    
    //cart add
    public void cartInsertService(CartVO cartvo) throws Exception{
        orderMapper.cartInsert(cartvo);
    }
    //cart list
    public ArrayList<CartVO> cartListService(int uid) throws Exception{
        return orderMapper.cartList(uid);
    }
    
    public void cartDelete(int uid) throws Exception{
        orderMapper.cartDelete(uid);
    }
    public int sumPriceService(int uid) throws Exception{
        return orderMapper.sumPrice(uid);
    }
    public void cartcountUpdateService(CartVO cartvo) throws Exception{
        orderMapper.cartcountUpdate(cartvo);
    }


}
