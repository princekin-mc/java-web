package com.mc.dao;

import com.mc.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserMapper {

    // 根据id查询用户
    User queryUserById(@Param("id") int id);

    // 修改用户
    int updateUser(User user);

}
