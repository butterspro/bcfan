package com.BcFan.dao.impl;


import java.util.List;

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
	public PageBean queryVedioByData(String data) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Vedio> queryVedioByUid(int uid) {
		// TODO Auto-generated method stub
		return null;
	}

}
