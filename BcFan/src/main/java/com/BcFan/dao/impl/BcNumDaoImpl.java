package com.BcFan.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.dao.BcNumDao;
import com.BcFan.entity.BcNum;

@Repository
@Transactional
public class BcNumDaoImpl implements BcNumDao {
	@Autowired
	private SessionFactory sessionFactory;

	public boolean selectByBcNum(String BcNum) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		BcNum bcNum = (BcNum) session.createQuery("from BcNum where bcNum=?").setString(0, BcNum).uniqueResult();
		if (bcNum != null) {
			// ´æÔÚ
			return true;
		}
		return false;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void deleteBcNum(String bcNum) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		BcNum num = (BcNum) session.get(BcNum.class, bcNum);
		System.out.println("sss" + num.getBcNum());
		session.delete(num);
	}

}
