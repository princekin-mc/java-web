package com.mc.mapper;

import com.mc.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

//这个注解表示了这是一个 mybatis 的 mapper 类  Dao
@Mapper
@Repository
public interface UserMapper {
    User queryUserByName(String name);
}
