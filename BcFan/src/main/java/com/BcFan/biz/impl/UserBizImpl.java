package com.BcFan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.biz.UserBiz;
import com.BcFan.dao.BcNumDao;
import com.BcFan.dao.UserDao;
import com.BcFan.entity.Users;
import com.BcFan.util.PageBean;

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
		//ɾ��������
		bcNumDao.deleteBcNum(bcNum);
	}
	public void modifyUser(Users u) {
		// TODO Auto-generated method stub
		//�����ֻ��Ų�ѯ�û�
		
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
	@Override
	public PageBean getUsersListBySearchData(PageBean p, String searchData) {
		// TODO Auto-generated method stub
		p.setTotalCount(userDao.selectCount(searchData));
		p=userDao.queryUserListByData(p, searchData);
		p.setTotalPage();
		return p;
	}
	@Override
	public void updateUserPic(Users u) {
		// TODO Auto-generated method stub
		userDao.updatePicPath(u);
	}
	
	

	

}