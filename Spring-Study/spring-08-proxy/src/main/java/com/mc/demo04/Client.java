package com.mc.demo04;

import com.mc.demo02.UserService;
import com.mc.demo02.UserServiceImpl;

public class Client {
    public static void main(String[] args) {
        // 真实角色
        UserServiceImpl userService = new UserServiceImpl();
        // 代理角色，不存在
        ProxylnvocationHandler pih = new ProxylnvocationHandler();
        // 设置要代理对象
        pih.setTarget(userService);
        // 动态生成代理类
        UserService proxy = (UserService) pih.getProxy();
        proxy.query();
    }
}
