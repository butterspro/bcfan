package com.BcFan.entity;

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
	private String text;
	@ManyToOne(targetEntity = Users.class)
	@JoinColumn(name = "uid")
	private Users user;
	private String color;
	private int time;
	private String position;
	private String size;

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public Vedio getVedio() {
		return vedio;
	}

	public void setVedio(Vedio vedio) {
		this.vedio = vedio;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Barrage(Vedio vedio, String text, Users user, String color, int time, String position, String size) {
		super();
		this.vedio = vedio;
		this.text = text;
		this.user = user;
		this.color = color;
		this.time = time;
		this.position = position;
		this.size = size;
	}

	public Barrage() {
		super();
		// TODO Auto-generated constructor stub
	}
}