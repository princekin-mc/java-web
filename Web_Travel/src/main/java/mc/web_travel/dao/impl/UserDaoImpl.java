package mc.web_travel.dao.impl;

import mc.web_travel.dao.UserDao;
import mc.web_travel.entity.User;
import mc.web_travel.util.BaseDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl extends BaseDao implements UserDao {
    private Connection connection;
    private PreparedStatement psmt;
    private ResultSet rSet;
    @Override
    public int addUser(User user) {
        String sql = "insert into user(username,password,sex,age,address,createTime) values(?,?,?,?,?,?)";
        Object obj[] = {
            user.getUsername(),
            user.getPassword(),
            user.getSex(),
            user.getAge(),
            user.getAddress(),
            user.getCreateTime()
        };
        return this.executeSql(sql,obj);
    }

    @Override
    public User login(String username, String password) {
        User user = null;
        try{
            connection = this.getConnection();
            String sql = "select * from user where username=? and password=?";
            psmt = connection.prepareStatement(sql);
            psmt.setString(1,username);
            psmt.setString(2,password);
            rSet = psmt.executeQuery();
            if(rSet.next()){
                user = new User();
                user.setUsername(rSet.getString("username"));
                user.setPassword(rSet.getString("password"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            this.close(connection,psmt,rSet);
        }
        return user;
    }

    @Override
    public User queryUsername(String username) {
        User user = null;
        try{
            connection = this.getConnection();
            String sql = "select * from user where username=?";
            psmt = connection.prepareStatement(sql);
            psmt.setString(1,username);
            rSet = psmt.executeQuery();
            while (rSet.next()){
                user = new User();
                user.setId(rSet.getLong("id"));
                user.setUsername(rSet.getString("username"));
                user.setPassword(rSet.getString("password"));
                user.setSex(rSet.getInt("sex"));
                user.setAge(rSet.getInt("age"));
                user.setAddress(rSet.getString("address"));
                user.setCreateTime(rSet.getDate("createTime"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            this.close(connection,psmt,rSet);
        }
        return user;
    }

    @Override
    public List<User> queryAllUser() {
        List<User> list = new ArrayList<>();
        try{
            connection = this.getConnection();
            String sql = "select * from user";
            psmt = connection.prepareStatement(sql);
            rSet = psmt.executeQuery();
            while (rSet.next()){
                User user = new User();
                user.setUsername(rSet.getString("username"));
                user.setPassword(rSet.getString("password"));
                user.setSex(rSet.getInt("sex"));
                user.setAge(rSet.getInt("age"));
                user.setAddress(rSet.getString("address"));
                user.setCreateTime(rSet.getDate("createTime"));
                list.add(user);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            this.close(connection,psmt,rSet);
        }
        return list;
    }

    @Override
    public int uppdateUser(User user) {
        String sql = "update user set username=?,password=?,sex=?,age=?,address=?,createTime=? where id=?";
        Object obj[] = {
                user.getUsername(),
                user.getPassword(),
                user.getSex(),
                user.getAge(),
                user.getAddress(),
                user.getCreateTime(),
                user.getId()
        };
        return this.executeSql(sql,obj);
    }
}
