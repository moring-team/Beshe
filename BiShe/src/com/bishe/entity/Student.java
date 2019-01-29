package com.bishe.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="student")
public class Student {
	@Id
	@GeneratedValue(generator="increment_generator")
	@GenericGenerator(name="increment_generator", strategy="increment")
	
	private int stuId;
	private String stuName;
	private String stuPwd;
	private String stuTel;
	private int stuGrade;
	public int getstuId() {
		return stuId;
	}
	public void setstuId(int stuId) {
		this.stuId = stuId;
	}
	public String getstuName() {
		return stuName;
	}
	public void setstuName(String stuName) {
		this.stuName = stuName;
	}
	public String getstuPwd() {
		return stuPwd;
	}
	public void setstuPwd(String stuPwd) {
		this.stuPwd = stuPwd;
	}
	public String getstuTel() {
		return stuTel;
	}
	public void setstuTel(String stuTel) {
		this.stuTel = stuTel;
	}
	public int getstuGrade() {
		return stuGrade;
	}
	public void setstuGrade(int stuGrade) {
		this.stuGrade = stuGrade;
	}
	
	
}
