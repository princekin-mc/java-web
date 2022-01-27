package com.mc.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.mc.pojo.User;
import com.mc.utils.JsonUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

//@Controller
@RestController
public class UserController {
    @RequestMapping("/j1")
//    @ResponseBody //它就不会走视图解析器，会直接返回一个字符出
    public String json1() throws JsonProcessingException {
        // jackson，ObjectMapper
        // 创建一个jackson的对象映射器，用来解析数据
        ObjectMapper mapper = new ObjectMapper();

        //创建一个对象
        User user = new User("秦疆1号",3,"男");
        // 将我们的对象解析成为json格式
        String str = mapper.writeValueAsString(user);
        // 由于@ResponseBody注解，这里会将str转成json格式返回，十分方便
        return str;
    }

    @RequestMapping("/j2")
    public String json2() throws JsonProcessingException {

        List<User> userList = new ArrayList<User>();

        User user1 = new User("秦疆1号",3,"男");
        User user2 = new User("秦疆2号",3,"男");
        User user3 = new User("秦疆3号",3,"男");
        User user4 = new User("秦疆4号",3,"男");

        userList.add(user1);
        userList.add(user2);
        userList.add(user3);
        userList.add(user4);

        return JsonUtils.getJson(userList);
    }

    @RequestMapping("/j3")
    public String json3() throws JsonProcessingException {
        Date date = new Date();
        return JsonUtils.getJson(date,"yyyy-MM-dd HH:mm:ss");
    }

    @RequestMapping("/j4")
    public String json4() throws JsonProcessingException {
        List<User> userList = new ArrayList<User>();
        User user1 = new User("秦疆1号",3,"男");
        User user2 = new User("秦疆2号",3,"男");
        User user3 = new User("秦疆3号",3,"男");
        User user4 = new User("秦疆4号",3,"男");
        userList.add(user1);
        userList.add(user2);
        userList.add(user3);
        userList.add(user4);

        System.out.println("*******Java对象转JSON字符串*******");
        String str1 = JSON.toJSONString(userList);
        System.out.println("JSON.toJSONString(list)==>"+str1);
        String str2 = JSON.toJSONString(user1);
        System.out.println("JSON.toJSONString(user1)==>"+str2);

        System.out.println("\n******JSON字符串转Java对象*******");
        User jp_user1 = JSON.parseObject(str2,User.class);
        System.out.println("JSON.parseObject(str2,User.class)==>"+jp_user1);

        System.out.println( "\n******Java对象转JSON对象******");
        JSONObject jsonObject1 = (JSONObject) JSON.toJSON(user2);
        System.out.println("(JSONObject) JSON.toJSON(user2)==>"+jsonObject1.getString("name"));

        System.out.println("\n******JSON对象转Java对象******");
        User to_java_user = JSON.toJavaObject(jsonObject1,User.class);
        System.out.println("JSON.toJavaObject(jsonObject1,User.class)==>"+to_java_user);

        return "Hello";
    }
}
