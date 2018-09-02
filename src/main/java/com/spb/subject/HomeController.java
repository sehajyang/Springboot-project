package com.spb.subject;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spb.subject.order.domain.ProductVO;
import com.spb.subject.order.service.OrderService;

@Controller
public class HomeController {
    @Resource(name="com.spb.subject.order.service.OrderService")
    OrderService orderService;
    
    
    @RequestMapping("/") //main view
    private String Home(Model model,ProductVO bean) throws Exception{
        model.addAttribute("plist",orderService.productListService());
        return "home"; 
    }

}
