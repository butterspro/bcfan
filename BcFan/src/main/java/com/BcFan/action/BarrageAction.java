package com.BcFan.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.BcFan.biz.BarrageBiz;
import com.BcFan.biz.VedioBiz;
import com.BcFan.entity.Barrage;
import com.opensymphony.xwork2.ActionContext;

import net.sf.json.JSONArray;

@Controller("barrageAction")
public class BarrageAction {
	@Autowired
	private VedioBiz vedioBiz;
	private String str;
	private Barrage danmu;
	@Autowired
	private BarrageBiz barrageBiz;

	public VedioBiz getVedioBiz() {
		return vedioBiz;
	}

	public void setVedioBiz(VedioBiz vedioBiz) {
		this.vedioBiz = vedioBiz;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public Barrage getDanmu() {
		return danmu;
	}

	public void setDanmu(Barrage danmu) {
		this.danmu = danmu;
	}

	public BarrageBiz getBarrageBiz() {
		return barrageBiz;
	}

	public void setBarrageBiz(BarrageBiz barrageBiz) {
		this.barrageBiz = barrageBiz;
	}

	// 从数据库获得弹幕传到前端显示
	@SuppressWarnings("unchecked")
	public String getAllBarrageByVid() {
		System.out.println("123");
		ActionContext actionContext = ActionContext.getContext();
		@SuppressWarnings("rawtypes")
		Map session = actionContext.getSession();
		List<Barrage> barrageList = barrageBiz.queryBarrageByVid(29);
		List<Barrage> list = new ArrayList<Barrage>();
		list.addAll(barrageList);
		JSONArray jo = JSONArray.fromObject(list);
		str = jo.toString();
		session.put("vedioMain", vedioBiz.getVedioOnVedioMain(29));
		session.put("barrageList", barrageList);
		return "success";
	}

	// 把弹幕存到数据库
	public String setBarrageByVid() {
		barrageBiz.insertBarrageByVidAndUid(danmu);
		return "success";
	}
}
