package com.BcFan.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "barrage")
public class Barrage {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bid;
	@ManyToOne(targetEntity = Vedio.class)
	@JoinColumn(name = "vid")
	private Vedio vedio;
	private String barrageContent;
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "uid")
	private Users user;
	private Date barrageTime;

	public Vedio getVedio() {
		return vedio;
	}

	public void setVedio(Vedio vedio) {
		this.vedio = vedio;
	}

	public String getBarrageContent() {
		return barrageContent;
	}

	public void setBarrageContent(String barrageContent) {
		this.barrageContent = barrageContent;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Date getBarrageTime() {
		return barrageTime;
	}

	public void setBarrageTime(Date barrageTime) {
		this.barrageTime = barrageTime;
	}

	public Barrage(Vedio vedio, String barrageContent, Users user, Date barrageTime) {
		super();
		this.vedio = vedio;
		this.barrageContent = barrageContent;
		this.user = user;
		this.barrageTime = barrageTime;
	}

	public Barrage() {
		super();
		// TODO Auto-generated constructor stub
	}
}