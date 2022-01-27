package com.mc.dao;

import com.mc.pojo.User;
import com.mc.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;
import java.util.List;

public class UserMapperTest {
    @Test
    public void test(){
        // 第一步： 获取SqlSession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        try {
            // 第二步： 执行SQL
            // 方式一：getMapper
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            List<User> userList = userMapper.getUserList();

            // 方式二： 不推荐使用
            // List<User> userList = sqlSession.selectList("com.mc.dao.UserDao.getUserList");
            for (User user : userList) {
                System.out.println(user);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            // 关闭SqlSession
            sqlSession.close();
        }
    }
    @Test
    public void getUserById(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        User user = userMapper.getUserById(1);
        System.out.println(user);
        sqlSession.close();
    }
    @Test
    public void getUserById2(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("userId",5);
        map.put("userName","小李");
        User user = userMapper.getUserById2(map);
        System.out.println(user);
        sqlSession.close();
    }
    @Test
    public void getUserLike(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        List<User> userList = userMapper.getUserLike("%李%");
        for (User user : userList) {
            System.out.println(user);
        }
        sqlSession.close();
    }
    @Test
    public void addUser(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        int result = userMapper.addUser(new User(4,"王五","10201"));
        if (result>0){
            System.out.println("插入成功！");
        }
         // 提交事务
        sqlSession.commit();
        sqlSession.close();
    }
    @Test
    public void addUser2(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("userId",5);
        map.put("userName","小李");
        map.put("passWord","0231");
        int result = userMapper.addUser2(map);
        if (result>0){
            System.out.println("插入成功！");
        }
        // 提交事务
        sqlSession.commit();
        sqlSession.close();
    }
    @Test
    public void updateUser(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        int result = userMapper.updateUser(new User(2,"王小五","12321"));
        if (result>0){
            System.out.println("修改成功！");
        }
        // 提交事务
        sqlSession.commit();
        sqlSession.close();
    }
    @Test
    public void deleteUser(){
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        int result = userMapper.deleteUser(4);
        if (result>0){
            System.out.println("删除成功！");
        }
        // 提交事务
        sqlSession.commit();
        sqlSession.close();
    }
}
