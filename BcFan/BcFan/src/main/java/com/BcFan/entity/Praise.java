package com.BcFan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "praise")
public class Praise {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "uid")
	private Users user;
	@ManyToOne(targetEntity = Vedio.class)
	@JoinColumn(name = "vid")
	private Vedio vedio;

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Vedio getVedio() {
		return vedio;
	}

	public void setVedio(Vedio vedio) {
		this.vedio = vedio;
	}
	
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public Praise(Users user, Vedio vedio) {
		super();
		this.user = user;
		this.vedio = vedio;
	}

	public Praise() {
		super();
		// TODO Auto-generated constructor stub
	}
}