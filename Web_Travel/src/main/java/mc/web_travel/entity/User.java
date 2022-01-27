package mc.web_travel.entity;

import java.util.Date;

/**
 * 用户实体类
 * @author MC234
 *
 */
public class User {
	private Long id;  //用户id,设置自增
	private String username; //用户名，登录名
	private String password; //登录密码
	private int sex;  //性别  0:男  1:女
	private Integer age;//年龄
	private String address;//家庭住址
	private Date createTime;  //创建时间

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "User{" +
				"username='" + username +
				", password='" + password + '\'' +
				", sex=" + sex +
				", age=" + age +
				", address='" + address + '\'' +
				", createTime=" + createTime +
				'}';
	}
}
