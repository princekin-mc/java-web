package com.mc.springcloud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

//启动类
// Ribbon 和 Eureka 整合以后，客户端可以直接调用，不用关心IP地址和端口号
@SpringBootApplication
@EnableEurekaClient
@EnableFeignClients(basePackages = {"com.mc.springcloud"})
//@ComponentScan("com.mc.springcloud.service")
public class ConsumerDept_Feign {
    public static void main(String[] args) {
        SpringApplication.run(ConsumerDept_Feign.class,args);
    }
}
