package com.BcFan.entity;

import java.util.Date;
import java.sql.Time;

import javax.persistence.*;

@Entity
@Table(name="vedio")
public class Vedio {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int vid;
	private String title;
	private String vedioPath;
	private String imgPath;
	private Date upLoadTime;
	private int playCount;
	@ManyToOne(targetEntity=VedioType.class)
	@JoinColumn(name="typeId")
	private VedioType vediotype;
	private int stateId;
	@ManyToOne(targetEntity=Users.class)
	@JoinColumn(name="uid")
	private Users users;
	private Time vedioTime;
	private String vedioIntroduce;
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getUpLoadTime() {
		return upLoadTime;
	}
	public void setUpLoadTime(Date upLoadTime) {
		this.upLoadTime = upLoadTime;
	}
	public int getPlayCount() {
		return playCount;
	}
	public void setPlayCount(int playCount) {
		this.playCount = playCount;
	}
	public int getStateId() {
		return stateId;
	}
	public void setStateId(int stateId) {
		this.stateId = stateId;
	}	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public Time getVedioTime() {
		return vedioTime;
	}
	public void setVedioTime(Time vedioTime) {
		this.vedioTime = vedioTime;
	}
	public String getVedioIntroduce() {
		return vedioIntroduce;
	}
	public void setVedioIntroduce(String vedioIntroduce) {
		this.vedioIntroduce = vedioIntroduce;
	}

	public String getVedioPath() {
		return vedioPath;
	}
	public void setVedioPath(String vedioPath) {
		this.vedioPath = vedioPath;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public VedioType getVediotype() {
		return vediotype;
	}
	public void setVediotype(VedioType vediotype) {
		this.vediotype = vediotype;
	}
	public Vedio() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Vedio(String title, String vedioPath, String imgPath, Date upLoadTime, int playCount, VedioType vediotype,
			int stateId, Users users, Time vedioTime, String vedioIntroduce) {
		super();
		this.title = title;
		this.vedioPath = vedioPath;
		this.imgPath = imgPath;
		this.upLoadTime = upLoadTime;
		this.playCount = playCount;
		this.vediotype = vediotype;
		this.stateId = stateId;
		this.users = users;
		this.vedioTime = vedioTime;
		this.vedioIntroduce = vedioIntroduce;
	}


	
	
	
}
