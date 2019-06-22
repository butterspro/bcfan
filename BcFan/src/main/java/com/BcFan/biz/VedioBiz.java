package com.BcFan.biz;

import com.BcFan.entity.Vedio;

public interface VedioBiz {
	public Vedio CheckVedio(Vedio vedio, int typeId, int uid);

	// 根据视频id获得视频信息
	public Vedio getVedioOnVedioMain(int vid);
}
