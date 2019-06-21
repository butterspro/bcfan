package com.BcFan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int uid;// 用户id
	private String uname;// 用户名
	private String upassword;// 用户密码
	@ManyToOne(targetEntity = UserType.class)
	@JoinColumn(name = "tid")
	private UserType userType;// 用户类型id
	private String tel;// 用户手机号
	private String gender;// 用户性别
	private String picPath;// 用户头像路径
	private int status;// 用户的登录状态 0:未登录 1:已登录
	private String birthday;// 用户生日
	private String sign;//个性签名

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public UserType getUserType() {
		return userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPicPath() {
		return picPath;
	}

	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}


	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}



	public Users(String uname, String upassword, UserType userType, String tel, String gender, String picPath,
			int status, String birthday, String sign) {
		super();
		this.uname = uname;
		this.upassword = upassword;
		this.userType = userType;
		this.tel = tel;
		this.gender = gender;
		this.picPath = picPath;
		this.status = status;
		this.birthday = birthday;
		this.sign = sign;
	}

	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}
}