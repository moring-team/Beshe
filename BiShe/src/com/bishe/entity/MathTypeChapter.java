package com.bishe.entity;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

public class MathTypeChapter {
	
	@Id
	@GeneratedValue(generator="increment_generator")
	@GenericGenerator(name="increment_generator", strategy="increment")
	
	private int id;
	private String chapter;
	private int math1;
	private int math2;
	private int math3;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getChapter() {
		return chapter;
	}
	public void setChapter(String chapter) {
		this.chapter = chapter;
	}
	public int getMath1() {
		return math1;
	}
	public void setMath1(int math1) {
		this.math1 = math1;
	}
	public int getMath2() {
		return math2;
	}
	public void setMath2(int math2) {
		this.math2 = math2;
	}
	public int getMath3() {
		return math3;
	}
	public void setMath3(int math3) {
		this.math3 = math3;
	}
	
	
}
