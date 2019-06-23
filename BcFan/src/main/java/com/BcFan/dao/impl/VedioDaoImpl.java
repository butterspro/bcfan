package com.BcFan.dao.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.dao.VedioDao;
import com.BcFan.entity.Users;
import com.BcFan.entity.Vedio;
import com.BcFan.entity.VedioType;
import com.BcFan.util.PageBean;
@Repository
@Transactional
public class VedioDaoImpl implements VedioDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Vedio InsertVedio(Vedio vedio,int typeId,int uid) {
		Session session=sessionFactory.getCurrentSession();
		/*vedio=(Vedio) session.createQuery("insert into vedio values(?,?,?,?,?,?,?,?,?,?)")
		.setString(0, vedio.getTitle()).setString(1, vedio.getVedioPath())
		.setString(2, vedio.getImgPath()).setDate(3, vedio.getUpLoadTime()).setInteger(4, vedio.getPlayCount())
		.setInteger(5, vedio.getTypeId()).setInteger(6, vedio.getStateId()).setInteger(7, vedio.getUid())
		.setTime(8, vedio.getVedioTime()).setString(9, vedio.getVedioIntroduce()).uniqueResult();*/
		
		Users u=(Users) session.get(Users.class, uid);
		vedio.setUsers(u);
		VedioType v=(VedioType) session.get(VedioType.class, typeId);
		vedio.setVediotype(v);
		session.save(vedio);
		return vedio;
	}

	@Override
	public List<Vedio> queryAllVedio() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageBean queryVedioByData(PageBean p,String data) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Vedio> list = session.createQuery("from Vedio v where v.title like '%"+data+"%'").setFirstResult(p.startRow()).setMaxResults(p.getPageSize()).list();
		p.setList(list);
		return p;
	}

	@Override
	public List<Vedio> queryVedioByUid(int uid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Vedio queryVedio(int vid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Vedio as v where v.vid=:vid");
		query.setInteger("vid", vid);
		Vedio vedio = (Vedio) query.uniqueResult();
		return vedio;
	}
	@Override
	public int selectCount(String data) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int count=session.createQuery("from Vedio v where v.title like '%"+data+"%'").list().size();
		return count;
	}
}
