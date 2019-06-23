package com.BcFan.entity;

public class Test {
	private String text;
	private String color;
	private int time;
	private String position;
	private String size;

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

	public Test(String text, String color, int time, String position, String size) {
		super();
		this.text = text;
		this.color = color;
		this.time = time;
		this.position = position;
		this.size = size;
	}

	public Test() {
		super();
		// TODO Auto-generated constructor stub
	}
}