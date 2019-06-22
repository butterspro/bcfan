package com.BcFan.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.dao.BarrageDao;
import com.BcFan.entity.Barrage;

@Repository
@Transactional
public class BarrageDaoImpl implements BarrageDao {
	@Autowired
	private SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@Override
	public List<Barrage> queryBarrageByVid(int vid) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Barrage as b where b.vedio.vid=:vid");
		query.setInteger("vid", vid);
		@SuppressWarnings("unchecked")
		List<Barrage> list = query.list();
		return list;
	}

}
