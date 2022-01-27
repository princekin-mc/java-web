package com.mc.pojo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

// 等价于<bean id="user" class="com.mc.pojo.User"/>
// @Component： 组件
@Component
@Scope("prototype")
public class User {

    public String name;

    // 相当于 <property name="name" value="小马"/>
    @Value("小马")
    public void setName(String name) {
        this.name = name;
    }
}
