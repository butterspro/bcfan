package com.BcFan.biz;

import com.BcFan.entity.Users;

public interface UserBiz {
	//检查登录
	public Users checkLogin(String telOrName,String password);
	//根据用户名查用户
	public Users getUsersByUsername(String username);
	//根据电话查用户
	public Users getUsersByTel(String tel);
	//添加用户
	public void addUser(Users u,String bcNum);
	//修改用户密码
	public void modifyUser(Users u);
	//修改用户基本信息
	public void modifyUserInfo(Users u);
}
