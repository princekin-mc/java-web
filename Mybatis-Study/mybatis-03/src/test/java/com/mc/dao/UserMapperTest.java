package com.mc.dao;

import com.mc.pojo.User;
import com.mc.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class UserMapperTest {
    @Test
    public void test(){
        // 第一步： 获取SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        try {
            // 第二步： 执行SQL
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            User user = userMapper.getUserById(1);
            System.out.println(user);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            // 关闭SqlSession
            sqlSession.close();
        }
    }
}
