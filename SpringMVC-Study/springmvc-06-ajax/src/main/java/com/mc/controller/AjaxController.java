package com.mc.controller;

import com.mc.pojo.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class AjaxController {

    @RequestMapping("/t1")
    public String test(){
        return "hello";
    }

    @RequestMapping("/a1")
    public void a1(String name, HttpServletResponse response) throws IOException {
        System.out.println("a1:param=>" + name);
        if ("kuangshen".equals(name)) {
            response.getWriter().print("true");
        } else {
            response.getWriter().print("fa1se");
        }
    }

    @RequestMapping("/a2")
    public List<User> a2(){
        List<User> userList = new ArrayList<>();
        // 添加数据
        userList.add(new User("秦疆1号",1,"男"));
        userList.add(new User("秦疆2号",1,"男"));
        userList.add(new User("秦疆3号",1,"男"));
        return userList;
    }

    @RequestMapping("/a3")
    public String a3(String name , String pwd){
        String msg = "";
        if (name != null){
            // admin 这些数据应该在数据库中查
            if ("admin".equals(name)){
                msg = "ok";
            }else {
                msg ="用户名有误";
            }
        }
        if (pwd != null){
            //123456这些数据应该在数据库中查
            if ("123456".equals(pwd)) {
                msg = "ok";
            }else {
                    msg = "密码有误";
            }
        }
        return msg;  // 由于@RestController注解，将msg转成json格式返回

    }
}
