package com.BcFan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.biz.VedioBiz;
import com.BcFan.dao.VedioDao;
import com.BcFan.entity.Vedio;
@Service
@Transactional
public class VedioBizImpl implements VedioBiz {
	@Autowired
	private VedioDao vedioDao;
	public VedioDao getVedioDao() {
		return vedioDao;
	}

	public void setVedioDao(VedioDao vedioDao) {
		this.vedioDao = vedioDao;
	}

	public Vedio CheckVedio(Vedio vedio,int typeId,int uid) {
		// TODO Auto-generated method stub
		vedioDao.InsertVedio(vedio,typeId,uid);		
		return vedio;
	}

	@Override
	public Vedio getVedioOnVedioMain(int vid) {
		// TODO Auto-generated method stub
		Vedio vedio = vedioDao.queryVedio(vid);
		return vedio;
	}

}
