package com.mc.springcloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.hystrix.dashboard.EnableHystrixDashboard;

//启动类
@SpringBootApplication
@EnableHystrixDashboard //开启监控
public class ConsumerDeptDashboard_9001 {
    public static void main(String[] args) {
        SpringApplication.run(ConsumerDeptDashboard_9001.class,args);
    }
}
