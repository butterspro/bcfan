package com.BcFan.dao;

import java.util.List;

import com.BcFan.entity.Vedio;
import com.BcFan.util.PageBean;

public interface VedioDao {
	//查询所有视频
	public List<Vedio> queryAllVedio();
	//分页查询
	public PageBean queryVedioByData(String data);
	//查询用户的视频
	public List<Vedio> queryVedioByUid(int uid);
	//插入一个视频
		public Vedio InsertVedio(Vedio vedio,int typeId,int uid);
}
