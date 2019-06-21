package com.BcFan.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.BcFan.biz.BcNumBiz;

@Controller("bcNumAction")
public class BcNumAction {
	@Autowired
	private BcNumBiz bcNumBiz;
	private String bcNum;
	private String message;
	//检查邀请码是否合法
	public String checkBcNum() {
		System.out.println(bcNum);
		boolean flag=bcNumBiz.selectByBcNum(bcNum);
		if(flag) {
			message="exist";
		}else {
			message="";
		}
		return "success";
	}
	public BcNumBiz getBcNumBiz() {
		return bcNumBiz;
	}

	public void setBcNumBiz(BcNumBiz bcNumBiz) {
		this.bcNumBiz = bcNumBiz;
	}

	public String getBcNum() {
		return bcNum;
	}

	public void setBcNum(String bcNum) {
		this.bcNum = bcNum;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
