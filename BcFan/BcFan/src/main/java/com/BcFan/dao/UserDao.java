package com.BcFan.dao;

import java.util.List;

import com.BcFan.entity.Users;
import com.BcFan.util.PageBean;

public interface UserDao {
	//根据用户名和密码或者手机号和用户名查询用户
	public Users selectUserByUsernameAndPwd(String telOrName,String password);
	//根据根据用户id查询登录状态
	public int selectStateByUid(int uid);
	//根据用户id改变用户状态
	public void updateStateByUid(int uid,int status);
	//根据用户名查用户
	public Users selectByUsername(String username);
	//根据电话查用户
	public Users selectByTel(String tel);
	//添加用户
	public void insertUser(Users u);
	//修改用户通过密码
	public void updateUser(Users u);
	//根据昵称,出生年月,性别,简介修改用户
	public void updateUserByUnameAndBirthdayAndSexAndSign(Users u);
	//修改头像
	public void updatePicPath(Users u);
	//查询粉丝
	public List<Users> queryFansNumByUid(Users u);
	//查询自己关注的人
	public List<Users> queryfocusUser(Users u);
	//模糊查询所有用户分页
	public PageBean queryUserListByData(String data);
}