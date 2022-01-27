package com.mc.pojo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

// 这里这个注解的意思，就是说这个类被Spring接管了，注册到了容器中
@Component
public class User {

    public String name;

    @Value("狂神")  // 属性注入值
    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + name + '\'' +
                '}';
    }
}
