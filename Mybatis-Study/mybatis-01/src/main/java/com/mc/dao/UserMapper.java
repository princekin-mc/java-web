package com.mc.dao;

import com.mc.pojo.User;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    // 查询全部用户
    List<User> getUserList();
    // 根据id查询用户
    User getUserById(int id);
    User getUserById2(Map<String,Object> map);
    // 模糊查询
    List<User> getUserLike(String value);
    // 增加一个用户
    int addUser(User user);
    // 万能的Map
    int addUser2(Map<String,Object> map);
    // 修改一个用户信息
    int updateUser(User user);
    // 删除一个用户
    int deleteUser(int id);
}
