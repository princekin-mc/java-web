package com.mc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// @Controller注解的类会自动添加到Spring上下文中，即被Spring接管
// 被这个注解的类中的所有方法，如果返回值是String，并且有具体页面可以跳转，那么就会被视图解析器解析
@Controller
@RequestMapping("/myweb")
public class ControllerTest2 {

    //映射访问路径
    @RequestMapping("/test2")
    public String test1 (Model model){
        model.addAttribute("msg","ControllerTest1" ); //返回视图位置
        return "test" ; // WEB-INF/jsp/test.jsp
    }
}
