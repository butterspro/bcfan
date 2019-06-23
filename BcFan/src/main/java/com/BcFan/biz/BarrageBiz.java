package com.BcFan.biz;

import java.util.List;

import com.BcFan.entity.Barrage;

public interface BarrageBiz {
	//获得某视频的弹幕
	public List<Barrage> queryBarrageByVid(int vid);
	// 把弹幕存到数据库
	public void insertBarrageByVidAndUid(Barrage barrage);
}
