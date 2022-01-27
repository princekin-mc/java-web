package com.mc.controller;

import com.mc.mapper.UserMapper;
import com.mc.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @Autowired
    private UserMapper userMapper;

    @GetMapping("/queryUserList")
    public List<User> queryUserList() {
        List<User> userList = userMapper.queryUserList();
        for (User user : userList) {
            System.out.println(user);
        }
        return userList;
    }

    //添加一个用户
    @GetMapping("/addUser")
    public String addUser() {
        userMapper.addUser(new User(5, "阿毛", "456789"));
        return "addUser-ok";
    }

    //修改一个用户
    @GetMapping("/updateUser")
    public String updateUser() {
        userMapper.updateUser(new User(5, "阿毛", "421319"));
        return "updateUser-ok";
    }

    //根据id删除用户
    @GetMapping("/deleteUser")
    public String deleteUser() {
        userMapper.deleteUserById(5);
        return "deleteUser-ok";

    }
}
