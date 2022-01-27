package com.mc.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 注意：这里我们先导入controller接口
public class HelloController implements Controller {
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // ModelAndView模型和视图
        ModelAndView mv = new ModelAndView();
        //封装对象，放在ModelAndView中   业务代码
        mv.addObject("msg", "HelloSpringMVC!");
        //封装要跳转的视图，放在ModelAndView中   视图跳转
        mv.setViewName("hello"); //： /WEB-INF/jsp/hello.jsp
        return mv;
    }
}
