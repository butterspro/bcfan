package com.BcFan.entity;

import java.io.Serializable;

public class Test implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String text;
	private String color;
	private int size;
	private int position;
	private int time;
	private String isnew;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getPosition() {
		return position;
	}

	public void setPosition(int position) {
		this.position = position;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public String getIsnew() {
		return isnew;
	}

	public void setIsnew(String isnew) {
		this.isnew = isnew;
	}

	public Test(String text, String color, int size, int position, int time, String isnew) {
		super();
		this.text = text;
		this.color = color;
		this.size = size;
		this.position = position;
		this.time = time;
		this.isnew = isnew;
	}

	public Test() {
		super();
		// TODO Auto-generated constructor stub
	}
}