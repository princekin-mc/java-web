package com.mc.service;

import com.mc.pojo.UserDao;

public class UserServiceImpl implements UserService {
//    private UserDao userDao = new UserDaoOracleImpl();
    private UserDao userDao;
    // 利用set进行实现动态值的注入！
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
    public void getUser(){
        userDao.getUser();
    }
}
