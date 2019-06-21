package com.BcFan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.dao.UserDao;
import com.BcFan.entity.UserType;
import com.BcFan.entity.Users;
import com.BcFan.util.PageBean;

@Repository
@Transactional
public class UserDaoImpl implements UserDao {
	private static final Class UserType = null;
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Users selectUserByUsernameAndPwd(String telOrName, String password) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		System.out.println("userDao-->"+telOrName+" "+password);
		Users user = (Users) session.createQuery("from Users u where (u.uname=? and u.upassword=?) or (u.tel=? and u.upassword=?)").setString(0, telOrName).setString(1, password).setString(2, telOrName).setString(3, password).uniqueResult();
		System.out.println(user);
		return user;
	}

	public int selectStateByUid(int uid) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int status = (Integer) session.createQuery("select status from Users where uid=?").setInteger(0, uid)
				.uniqueResult();
		return status;
	}

	public void updateStateByUid(int uid, int status) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Users users = (Users) session.get(Users.class, uid);
		users.setStatus(status);
		session.update(users);
	}

	public Users selectByUsername(String username) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Users users = (Users) session.createQuery("from Users where uname=?").setString(0, username).uniqueResult();
		return users;
	}

	public Users selectByTel(String tel) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Users u = (Users) session.createQuery("from Users where tel=?").setString(0, tel).uniqueResult();
		return u;
	}

	public void insertUser(Users u) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		UserType userType = (UserType) session.get(UserType.class, 1);
		u.setUserType(userType);
		session.save(u);

	}

	public void updateUser(Users u) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Users user = (Users) session.get(Users.class, u.getUid());
		user.setUpassword(u.getUpassword());
		session.update(user);
	}

	@Override
	public void updateUserByUnameAndBirthdayAndSexAndSign(com.BcFan.entity.Users u) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Users user = (Users) session.get(Users.class, u.getUid());
		user.setUname(u.getUname());
		user.setBirthday(u.getBirthday());
		user.setGender(u.getGender());
		user.setSign(u.getSign());
		session.update(user);
	}

	@Override
	public void updatePicPath(Users u) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Users> queryFansNumByUid(Users u) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Users> queryfocusUser(Users u) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageBean queryUserListByData(String data) {
		// TODO Auto-generated method stub
		return null;
	}

}