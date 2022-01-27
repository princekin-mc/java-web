package mc.web_travel.dao;

import mc.web_travel.entity.User;

import java.util.List;

public interface UserDao {
    // 定义用户功能  注册，登录，查询
    public int addUser(User user);  // 注册成功返回1，注册失败 0
    public User login(String username, String password);  // 登录
    public User queryUsername(String username); //查询单个用户
    public List<User> queryAllUser();  // 查询所有用户
    public int uppdateUser(User user);  // 修改成功返回1，注册失败 0
}
