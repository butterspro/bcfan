package com.BcFan.dao;

import java.util.List;

import com.BcFan.entity.Vedio;
import com.BcFan.util.PageBean;

public interface VedioDao {
	// ��ѯ������Ƶ
	public List<Vedio> queryAllVedio();

	// ��ҳ��ѯ
	public PageBean queryVedioByData(PageBean p,String data);

	// ��ѯ�û�����Ƶ
	public List<Vedio> queryVedioByUid(int uid);

	// ����һ����Ƶ
	public Vedio InsertVedio(Vedio vedio, int typeId, int uid);
	
	//获取某视频的信息
	public Vedio queryVedio(int vid);
	//根据查询信息查询视频的总条数
	public int selectCount(String data);
}
