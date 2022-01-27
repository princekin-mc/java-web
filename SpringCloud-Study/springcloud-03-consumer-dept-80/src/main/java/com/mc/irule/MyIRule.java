package com.mc.irule;

import com.netflix.loadbalancer.IRule;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MyIRule {

    @Bean
    public IRule mcIRule(){
        return new MyRandomRule(); ////默认是轮询，现在我们定义为~MyRandomRule
    }
}
