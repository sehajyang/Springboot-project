package com.spb.subject.order.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spb.subject.order.domain.CartVO;
import com.spb.subject.order.domain.OrderDetailVO;
import com.spb.subject.order.domain.OrderVO;
import com.spb.subject.order.domain.ProductVO;
import com.spb.subject.order.service.OrderService;


@Controller
public class OrderController {
    
    @Resource(name="com.spb.subject.order.service.OrderService")
    OrderService orderService;
    
    //카트 관련
    @RequestMapping("order/cart")
    private String loginView() {
        return "order/cart";
    }
    
    @RequestMapping(value = "order/cart/{uid}",method = RequestMethod.GET)
    private String cartView(@PathVariable int uid,CartVO cartvo,Model model) {
        try {
            model.addAttribute("list",orderService.cartListService(uid));
            model.addAttribute("totalPrice",orderService.sumPriceService(uid));
        } catch (Exception e) {
            System.out.println("구매내역이 없습니다");
        }
        return "order/cart";
    }
    
    @RequestMapping(value = "order/cart/{uid}",method = RequestMethod.POST)
    private String cart(@PathVariable int uid,CartVO cartvo) {
        try {
            cartvo.setPrice(cartvo.getPrice()*cartvo.getCount());
            orderService.cartInsertService(cartvo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "product/detail";
    }
    @RequestMapping(value = "order/cartup/{uid}",method = RequestMethod.POST)
    private String updatecart(@PathVariable int uid,CartVO cartvo) {
        try {
            cartvo.setProduct_price(cartvo.getProduct_price()*cartvo.getCount());
            orderService.cartcountUpdateService(cartvo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/order/cart/"+uid;
    }
    
    //상품 관련
    @RequestMapping(value = "product/{product_id}",method = RequestMethod.GET)
    private String productView(@PathVariable int product_id,ProductVO bean,Model model) {
        System.out.println("get");
        try {
            model.addAttribute("pinfo",orderService.productDetailService(product_id));
        } catch (Exception e) {
            System.out.println("pdetailservice 실행안됨");
        }
        return "product/detail";
    }
    
    //구매하기
    @RequestMapping(value = "order/buy/{uid}",method = RequestMethod.GET)
    private String buyView(@PathVariable int uid,Model model) {
        try {
            model.addAttribute("list",orderService.cartListService(uid));
            model.addAttribute("totalPrice",orderService.sumPriceService(uid));
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return "order/buy";
    }
    
    @RequestMapping(value = "order/buy/{uid}",method = RequestMethod.POST)
    private String buy(@PathVariable int uid,OrderVO ordervo) {
       try {
        //insert
        orderService.ordersInsertService(ordervo);
        orderService.orderDetailInsertService(uid);
        orderService.cartDelete(uid);
    } catch (Exception e) {
        e.printStackTrace();
    }
        return "order/ordercomplete";
    }
    
    
  //주문내역조회
    @RequestMapping(value = "order/{uid}",method = RequestMethod.GET)
    private String signupView(@PathVariable int uid,Model model) {
        try {
            model.addAttribute("list",orderService.orderList(uid));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "order/orderview";
    }
    @RequestMapping(value = "order/detail/{order_id}",method = RequestMethod.GET)
    private String detailView(@PathVariable int order_id,Model model) {
        try {
            model.addAttribute("ditem",orderService.orderDetail(order_id));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "order/orderdetail";
    }
    

}
