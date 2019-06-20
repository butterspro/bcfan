package com.BcFan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="userfriend")
public class UserFriend {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ufid;
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "uid",insertable=false,updatable=false)
	private Users userF;
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "uid")
	private Users userU;
	public Users getUserF() {
		return userF;
	}
	public void setUserF(Users userF) {
		this.userF = userF;
	}
	public Users getUserU() {
		return userU;
	}
	public void setUserU(Users userU) {
		this.userU = userU;
	}
	
	public int getUfid() {
		return ufid;
	}
	public void setUfid(int ufid) {
		this.ufid = ufid;
	}
	public UserFriend(Users userF, Users userU) {
		super();
		this.userF = userF;
		this.userU = userU;
	}
	public UserFriend() {
		super();
		// TODO Auto-generated constructor stub
	}	
}