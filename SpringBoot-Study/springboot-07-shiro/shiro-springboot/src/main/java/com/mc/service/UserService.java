package com.mc.service;

import com.mc.pojo.User;

public interface UserService {
    User queryUserByName(String name);
}
