package com.yue.controller;

import com.yue.domain.User;
import com.yue.service.serviceimpl.UserServiceimpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Objects;

@Controller
public class LoginController {
    @Autowired
    private UserServiceimpl serviceimpl;

    @GetMapping("/login")
    public String login(String username, String password, Model model){
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        User user = serviceimpl.do_login(username);
        try{
            subject.login(token);
            if (Objects.equals(user.getPosition(), "admin")){

                return "redirect:/admins/all";
            }
            return "redirect:/users/my_project";
        }
        catch (UnknownAccountException e){
            model.addAttribute("msg","用户名不存在！");
            return "login";
        }
        catch (IncorrectCredentialsException e){
            model.addAttribute("msg","密码错误！");
            return "login";
        }
    }
    @RequestMapping("/toLogin")
    public String login(){
        return "login";
    }
    @RequestMapping("/")
    public String logins(){
        return "login";
    }

    @RequestMapping("/noAuth")
    @ResponseBody
    public String no_auth(){
        return "没有权限！";
    }
}
