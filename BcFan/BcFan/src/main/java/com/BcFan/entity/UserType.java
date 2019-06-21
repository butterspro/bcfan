package com.BcFan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "usertype")
public class UserType {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int tid;
	private String tname;

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public UserType(String tname) {
		super();
		this.tname = tname;
	}

	public UserType() {
		super();
		// TODO Auto-generated constructor stub
	}
}