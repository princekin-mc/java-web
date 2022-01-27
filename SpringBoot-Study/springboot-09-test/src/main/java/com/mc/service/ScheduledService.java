package com.mc.service;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class ScheduledService {

    //在一个特定的时间执行这个方法~Timer
    //cron表达式~
    //秒   分   时    日    月   周几~
    /*
    * 25 20 12 * * ?   每天的12点20分25秒执行一次
    * 25 0/5 12,18 * * ?   每天的12点和18点，每隔5分钟25秒执行一次
    * 0 15 12 ? * 1-6   每个月的周一到周六12点15分执行一次
    * */
    @Scheduled(cron="0/3 * * * * ?")
    public void hello(){
        System.out.println("hello,你被执行了~");
    }
}
