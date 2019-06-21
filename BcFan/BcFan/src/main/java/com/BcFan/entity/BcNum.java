package com.BcFan.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bcnum")
public class BcNum {
	@Id
	private String bcNum;
	public String getBcNum() {
		return bcNum;
	}

	public void setBcNum(String bcNum) {
		this.bcNum = bcNum;
	}
	
}
