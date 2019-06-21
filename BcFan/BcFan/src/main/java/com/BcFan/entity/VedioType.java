package com.BcFan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vediotype")
public class VedioType {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int typeId;
	private String vedioType;
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getVedioType() {
		return vedioType;
	}
	public void setVedioType(String vedioType) {
		this.vedioType = vedioType;
	}
	public VedioType(String vedioType) {
		super();
		this.vedioType = vedioType;
	}
	public VedioType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public VedioType(int typeId, String vedioType) {
		super();
		this.typeId = typeId;
		this.vedioType = vedioType;
	}
	
}
