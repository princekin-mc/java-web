package com.example.helloworld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    // 接口： http://localhost:8080/hello
    @RequestMapping("/hello")
    public String hello() {
        //调用业务，接收前端参数
        return "hello,world";
    }
}
