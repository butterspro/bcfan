package com.BcFan.dao;

import java.util.List;

import com.BcFan.entity.Vedio;
import com.BcFan.util.PageBean;

public interface VedioDao {
	//��ѯ������Ƶ
	public List<Vedio> queryAllVedio();
	//��ҳ��ѯ
	public PageBean queryVedioByData(String data);
	//��ѯ�û�����Ƶ
	public List<Vedio> queryVedioByUid(int uid);
	//����һ����Ƶ
		public Vedio InsertVedio(Vedio vedio,int typeId,int uid);
}
