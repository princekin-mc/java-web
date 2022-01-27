package com.mc.dao;

import com.mc.pojo.User;
import com.mc.utils.MybatisUtils;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class UserMapperTest {

    @Test
    public void deleteUser(){

        SqlSession sqlSession = MybatisUtils.getSqlSession();
        // 底层主要应用反射
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
//        List<User> userList = userMapper.getUsers();
//        for (User user : userList) {
//            System.out.println(user);
//        }
//        User user = userMapper.getUserById(1);
//        System.out.println(user);
//        userMapper.addUser(new User(7,"100","321"));
//        userMapper.updateUser(new User(7,"hello","000"));
        userMapper.deleteUser(7);
        sqlSession.close();
    }
}
