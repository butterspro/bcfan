package com.BcFan.biz;

import java.util.List;

import com.BcFan.entity.Vedio;
import com.BcFan.util.PageBean;

public interface VedioBiz {
	public Vedio CheckVedio(Vedio vedio, int typeId, int uid);

	// 根据视频id获得视频信息
	public Vedio getVedioOnVedioMain(int vid);
	//根据搜索字段得到视频信息
	public PageBean getVedioBySearchData(PageBean p,String data);
	//管理员查询所有未被审核的视频
	public List<Vedio> queryNotAudioVedio();
}
