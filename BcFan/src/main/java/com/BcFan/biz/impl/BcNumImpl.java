package com.BcFan.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.biz.BcNumBiz;
import com.BcFan.dao.BcNumDao;
@Service
@Transactional
public class BcNumImpl implements BcNumBiz{
	@Autowired
	private BcNumDao bcNumDao;
	public boolean selectByBcNum(String BcNum) {
		// TODO Auto-generated method stub
		return bcNumDao.selectByBcNum(BcNum);
	}
	public BcNumDao getBcNumDao() {
		return bcNumDao;
	}
	public void setBcNumDao(BcNumDao bcNumDao) {
		this.bcNumDao = bcNumDao;
	}
	
}
