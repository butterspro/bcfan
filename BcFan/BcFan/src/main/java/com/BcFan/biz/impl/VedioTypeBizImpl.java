package com.BcFan.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.BcFan.biz.VedioTypeBiz;
import com.BcFan.dao.VedioTypeDao;
import com.BcFan.entity.VedioType;
@Service
@Transactional
public class VedioTypeBizImpl implements VedioTypeBiz {
	@Autowired
	private VedioTypeDao vediotypedao;
	
	public VedioTypeDao getVediotypedao() {
		return vediotypedao;
	}

	public void setVediotypedao(VedioTypeDao vediotypedao) {
		this.vediotypedao = vediotypedao;
	}

	public List<VedioType> showAllType() {
		
		List<VedioType> list=vediotypedao.SelectAllVedioType();
		
		return list;
	}

}
