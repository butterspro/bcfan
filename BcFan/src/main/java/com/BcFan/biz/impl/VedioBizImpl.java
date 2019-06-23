package com.BcFan.biz.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.biz.VedioBiz;
import com.BcFan.dao.VedioDao;
import com.BcFan.entity.Vedio;
import com.BcFan.util.PageBean;
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
	@Override
	public PageBean getVedioBySearchData(PageBean p, String data) {
		// TODO Auto-generated method stub
		p.setTotalCount(vedioDao.selectCount(data));
		p=vedioDao.queryVedioByData(p, data);
		p.setTotalPage();
		return p;
	}

	@Override
	public List<Vedio> queryNotAudioVedio() {
		List<Vedio> list=vedioDao.queryAllVedio();
		List<Vedio> list2=new ArrayList<Vedio>();
		for(int i=0;i<list.size();i++) {
			if(list.get(i).getStateId()==1) {
				list2.add(list.get(i));
			}
		}
		
		return list2;
	}
}
