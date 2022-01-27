package com.mc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EncodingController {

    // 过滤器解决乱码
    @PostMapping("/e/t1")
    public String test1(String name, Model model){
        model.addAttribute("msg",name); // 获取表单提交的值
        return "test"; // 跳转到test页面显示输入的值
    }
}
