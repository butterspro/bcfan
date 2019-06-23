package com.BcFan.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.biz.BarrageBiz;
import com.BcFan.dao.BarrageDao;
import com.BcFan.entity.Barrage;
@Service
@Transactional
public class BarrageBizImpl implements BarrageBiz {
	@Autowired
	private BarrageDao barrageDao;

	public BarrageDao getBarrageDao() {
		return barrageDao;
	}

	public void setBarrageDao(BarrageDao barrageDao) {
		this.barrageDao = barrageDao;
	}

	@Override
	public List<Barrage> queryBarrageByVid(int vid) {
		// TODO Auto-generated method stub
		return barrageDao.queryBarrageByVid(vid);
	}

	@Override
	public void insertBarrageByVidAndUid(Barrage barrage) {
		// TODO Auto-generated method stub
		barrageDao.insertBarrageByVidAndUid(barrage);
	}
}