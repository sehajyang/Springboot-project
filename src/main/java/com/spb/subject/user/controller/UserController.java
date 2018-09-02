package com.spb.subject.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spb.subject.user.domain.UserVO;
import com.spb.subject.user.service.UserService;


@Controller
public class UserController {
    
    @Resource(name="com.spb.subject.user.service.UserService")
    UserService userService;
    
    //로그인
    @RequestMapping(value = "user/login",method = RequestMethod.GET)
    private String loginView() {
        System.out.println("get");
        return "user/login";
    }
    
    @RequestMapping(value = "user/login",method = RequestMethod.POST)
    private String login(HttpServletRequest req,@ModelAttribute UserVO bean) {
        HttpSession session = req.getSession();
        try {
            UserVO userinfo = userService.userIdService(bean.getId());
             if (userinfo.getPwd().equals(bean.getPwd())) {
                 session.setAttribute("uid", userinfo.getUid());
                 session.setAttribute("id", userinfo.getId());
                 session.setAttribute("pwd", userinfo.getPwd());
                 session.setAttribute("name", userinfo.getName());
                    System.out.println("로그인됨");
                    return "redirect:/";
                }else {
               System.out.println("비번 틀림");
               return "user/login";
                }
        } catch (Exception e) {
            System.out.println("그런아이디 없음");
            return "user/login";
        }
    }
    
    @RequestMapping(value = "user/logout",method = RequestMethod.GET)
    private String logout(HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.invalidate();
        return "redirect:/";
    }
    
    //회원가입
    @RequestMapping(value = "user/signup",method = RequestMethod.GET)
    private String signupView() {
        System.out.println("get");
        return "user/join";
    }
    
    @RequestMapping(value = "user/signup",method = RequestMethod.POST)
    private String signup(@ModelAttribute UserVO bean,Model model) {
        System.out.println("post");
        try {
            userService.userInsertService(bean);
            model.addAttribute("result","1");
        } catch (Exception e) {
            model.addAttribute("result","0");
        }
        return "user/joinresult";
    }
    //중복체크
    @RequestMapping(value = "user/idcheck/{id}",method = RequestMethod.GET)
    private String idcheck(@PathVariable String id,Model model) {
        try {
           UserVO uv = userService.userIdService(id);
           if(uv.getUid() != 0) {
            model.addAttribute("check","이미 있는 아이디입니다");
           }else {
            model.addAttribute("check","사용가능합니다");
           }
        } catch (Exception e) {
            model.addAttribute("check","사용가능합니다");
        }
        return "user/idcheck";
    }
    
    
    //유저 상세보기 및 수정
    @RequestMapping(value = "user/info/{uid}",method = RequestMethod.GET)
    private String userinfoView(@PathVariable int uid,Model model) {
        System.out.println("get");
        System.out.println(uid);
        try {
            model.addAttribute("list",userService.userDetailService(uid));
        } catch (Exception e) {
            System.out.println("uid 없음 select 결과없음");
        }
        return "user/userdetail";
    }
    
    @RequestMapping(value = "user/info/{uid}/update",method = RequestMethod.GET)
    private String userinfoUpdateView(@PathVariable int uid,Model model) {
        try {
            model.addAttribute("list",userService.userDetailService(uid));
        } catch (Exception e) {
            System.out.println("uid 없음 select 결과없음");
        }
        return "user/useredit";
    }
    @RequestMapping(value = "user/info/{uid}/update",method = RequestMethod.POST)
    private String userinfoUpdate(@PathVariable int uid,@ModelAttribute UserVO bean) {
        bean.setUid(uid);
        try {
            userService.userUpdateService(bean);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        System.out.println(bean);
        return "redirect:/user/info/"+uid;
    }
    

}
