package com.mc;

import com.fasterxml.jackson.core.JsonProcessingException;

import com.mc.pojo.User;
import com.mc.utils.RedisUtil;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

@SpringBootTest
class Springboot10RedisApplicationTests {

    @Autowired
    @Qualifier("redisTemplate")
    RedisTemplate redisTemplate;

    @Autowired
    RedisUtil redisUtil;

    @Test
    public void test1() {
        redisUtil.set("name", "kuangshen");
        System.out.println(redisUtil.get("name"));
    }

    @Test
    void contextLoads() {
        //redisTempLate     操作不同的数据类型，api和我们的指令是一样的
        //opsForVaLue   操作字符串类似String
        //opsForList    操作List类似List
        // opsForSet
        //opsForHash
        // opsForZSet
        // opsForGeo
        //opsForHyperLogLog

        //除了基本的操作，我们常用的方法都可以直接通过redisTemplate操作，比如事务和基本的CRUD

        //获取redis的连接对象
//        RedisConnection connection = redisTemplate.getConnectionFactory().getConnection();
//        connection.flushDb();
//        connection.flushAll();
        redisTemplate.opsForValue().set("mykey", "关注狂神说公众号");
        System.out.println(redisTemplate.opsForValue().get("mykey"));

    }

    @Test
    public void test() throws JsonProcessingException {
        //真实的开发一股都使用json来传递对象
        User user = new User("狂神说", 3);
//        String jsonUser = new ObjectMapper().writeValueAsString(user);
        redisTemplate.opsForValue().set("user", user);
        System.out.println(redisTemplate.opsForValue().get("user"));
    }

}
