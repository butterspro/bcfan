package com.BcFan.dao;

import java.util.List;

import com.BcFan.entity.Barrage;

public interface BarrageDao {
	//查询一个视频的所有弹幕信息
	public List<Barrage> queryBarrageByVid(int vid);
}
