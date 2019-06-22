package com.BcFan.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.BcFan.biz.BarrageBiz;
import com.BcFan.biz.VedioBiz;
import com.BcFan.entity.Test;

import net.sf.json.JSONArray;

@Controller("barrageAction")
public class BarrageAction {
	@Autowired
	private VedioBiz vedioBiz;
	private Test test;
	private String str;
	private Test danmu;
	@Autowired
	private BarrageBiz barrageBiz;

	public BarrageBiz getBarrageBiz() {
		return barrageBiz;
	}

	public void setBarrageBiz(BarrageBiz barrageBiz) {
		this.barrageBiz = barrageBiz;
	}

	public VedioBiz getVedioBiz() {
		return vedioBiz;
	}

	public void setVedioBiz(VedioBiz vedioBiz) {
		this.vedioBiz = vedioBiz;
	}

	public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public Test getDanmu() {
		return danmu;
	}

	public void setDanmu(Test danmu) {
		this.danmu = danmu;
	}

	// 从数据库获得弹幕传到前端显示
	public String getAllBarrageByVid() {
		/*
		 * ActionContext actionContext = ActionContext.getContext();
		 * 
		 * @SuppressWarnings("rawtypes") Map session = actionContext.getSession();
		 * List<Barrage> barrageList = barrageBiz.queryBarrageByVid(22);
		 * session.put("vedioMain", vedioBiz.getVedioOnVedioMain(22));
		 * session.put("barrageList", barrageList);
		 */
		Test test = new Test("hh", "#ffffff", 1, 0, 154, "");
		Test test1 = new Test("hh", "#ffffff", 1, 0, 154, "");
		List<Test> list = new ArrayList<Test>();
		list.add(test);
		list.add(test1);
		JSONArray jo = JSONArray.fromObject(list);
		str = jo.toString();
		System.out.println(jo);
		return "success";
	}

	// 把弹幕存到数据库
	public String setBarrageByVid() {
		System.out.println(danmu.getColor());
		System.out.println(danmu.getPosition());
		System.out.println(danmu.getSize());
		System.out.println(danmu.getText());
		System.out.println(danmu.getTime());
		return "success";
	}
}
