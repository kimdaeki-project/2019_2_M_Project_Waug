package com.wg.p1.model;

public class MemberVO {

	private String email;
	private String pw;
	private String name;
	private String ename_first;
	private String ename_last;
	private String phone;
	private String img;
	
	
	
	public String getEname_first() {
		return ename_first;
	}
	public void setEname_first(String ename_first) {
		this.ename_first = ename_first;
	}
	public String getEname_last() {
		return ename_last;
	}
	public void setEname_last(String ename_last) {
		this.ename_last = ename_last;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
