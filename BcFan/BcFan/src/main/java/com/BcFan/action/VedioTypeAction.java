package com.BcFan.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.BcFan.biz.VedioTypeBiz;
import com.BcFan.entity.VedioType;
import com.opensymphony.xwork2.ActionContext;

@Controller("vediotypeAction")
public class VedioTypeAction {
	@Autowired
	private VedioTypeBiz vediotypebiz;

	public VedioTypeBiz getVediotypebiz() {
		return vediotypebiz;
	}

	public void setVediotypebiz(VedioTypeBiz vediotypebiz) {
		this.vediotypebiz = vediotypebiz;
	}
	
	public String showAlltype() {
		Map<String,Object> session=ActionContext.getContext().getSession();
		List<VedioType> list=vediotypebiz.showAllType();
		session.put("list", list);
		
		return "success";
	}
	
}
