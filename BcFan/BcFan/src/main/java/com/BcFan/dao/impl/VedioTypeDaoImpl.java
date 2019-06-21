package com.BcFan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.dao.VedioTypeDao;
import com.BcFan.entity.VedioType;
@Repository
@Transactional
public class VedioTypeDaoImpl implements VedioTypeDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<VedioType> SelectAllVedioType() {
		Session session=sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<VedioType> list=(List<VedioType>)session.createQuery("from VedioType").list();
		
		return list;
	}

}
