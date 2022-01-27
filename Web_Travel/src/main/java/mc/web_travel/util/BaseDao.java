package mc.web_travel.util;

import java.sql.*;
/**
 * JDBC工具类
 * @author MC234
 *
 */
public class BaseDao {
	/**
	 * 1、获取连接，返回连接对象
	 * @return
	 */
	static Connection connection = null;

	public Connection getConnection(){
		String url= "jdbc:mysql://localhost:3306/db_web_travel?"+
      			"user=root&password=mc123456&useSSL=false&useUnicode=true&characterEncoding=utf-8&allowPublicKeyRetrieval=true";
		String driver_string = "com.mysql.cj.jdbc.Driver";
		try {
            Class.forName(driver_string);  //Step1：加载JDBC驱动
            connection = DriverManager.getConnection(url);    //Step2：建立连接
            System.out.println("数据库连接正常");
        } catch (Exception e){
            System.out.println("数据库连接异常");
            e.printStackTrace();
		}
        return connection;
	}
	
	/**
	 * 关闭连接对象的方法
	 * @param connection
	 * @param pStatement
	 * @param rSet
	 */
	public void close(Connection connection,PreparedStatement pStatement,ResultSet rSet){
		try {
			if(connection != null){
				connection.close();
			}
			if(pStatement != null){
				pStatement.close();
			}
			if(rSet != null){
				rSet.close();
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// 添加增删改的通用方法
	public int executeSql(String sql,Object obj[]){
		int num = 0;
		PreparedStatement psmt = null;
		try {
			connection = this.getConnection();
			psmt = connection.prepareStatement(sql);
//			通过for循环赋值
			for (int i=0;i<obj.length;i++){
				psmt.setObject(i+1,obj[i]);
			}
			num = psmt.executeUpdate();
		}catch (Exception e){
			e.printStackTrace();
		}
		finally {
			this.close(connection,psmt,null);
		}
		return num;
	}
}
