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
@Table(name="vediocontent")
public class VedioContent {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int bcid;
	private String discussContent;
	private Date discussTime;
	@ManyToOne(targetEntity=Users.class)
	@JoinColumn(name="uid")
	private Users user;
	@ManyToOne(targetEntity=Vedio.class)
	@JoinColumn(name="vid")
	private Vedio vedio;
	public String getDiscussContent() {
		return discussContent;
	}
	public void setDiscussContent(String discussContent) {
		this.discussContent = discussContent;
	}
	public Date getDiscussTime() {
		return discussTime;
	}
	public void setDiscussTime(Date discussTime) {
		this.discussTime = discussTime;
	}
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
	public VedioContent(String discussContent, Date discussTime, Users user, Vedio vedio) {
		super();
		this.discussContent = discussContent;
		this.discussTime = discussTime;
		this.user = user;
		this.vedio = vedio;
	}
	public VedioContent() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getBcid() {
		return bcid;
	}
	public void setBcid(int bcid) {
		this.bcid = bcid;
	}
	
}


