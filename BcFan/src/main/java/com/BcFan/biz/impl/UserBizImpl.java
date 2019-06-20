package com.BcFan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.biz.UserBiz;
import com.BcFan.dao.BcNumDao;
import com.BcFan.dao.UserDao;
import com.BcFan.entity.Users;

@Service
@Transactional
public class UserBizImpl implements UserBiz {
	@Autowired
	private UserDao userDao;
	@Autowired
	private BcNumDao bcNumDao;
	public Users checkLogin(String telOrName, String password) {
		// TODO Auto-generated method stub
		Users user = userDao.selectUserByUsernameAndPwd(telOrName, password);
		
		return user;
	}
	public Users getUsersByUsername(String username) {
		// TODO Auto-generated method stub
		return userDao.selectByUsername(username);
	}

	public void addUser(Users u,String bcNum) {
		// TODO Auto-generated method stub
		u.setPicPath("img/akari.jpg");
		userDao.insertUser(u);
		//删除邀请码
		bcNumDao.deleteBcNum(bcNum);
	}
	public void modifyUser(Users u) {
		// TODO Auto-generated method stub
		//根据手机号查询用户
		
		userDao.updateUser(u);
	}
	public Users getUsersByTel(String tel) {
		// TODO Auto-generated method stub
		return userDao.selectByTel(tel);
	}
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public BcNumDao getBcNumDao() {
		return bcNumDao;
	}
	public void setBcNumDao(BcNumDao bcNumDao) {
		this.bcNumDao = bcNumDao;
	}
	@Override
	public void modifyUserInfo(Users u) {
		// TODO Auto-generated method stub
		userDao.updateUserByUnameAndBirthdayAndSexAndSign(u);
	}
	
	

	

}