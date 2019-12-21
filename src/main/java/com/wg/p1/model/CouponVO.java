package com.wg.p1.model;

public class CouponVO {

	private String c_code;
	private String c_title;
	private String c_duration;
	private String c_discount_info;
	private int discount;
	private int c_num;
	private String m_pk;
	private int c_isuse;
	

	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public String getC_duration() {
		return c_duration;
	}
	public void setC_duration(String c_duration) {
		this.c_duration = c_duration;
	}
	public String getC_discount_info() {
		return c_discount_info;
	}
	public void setC_discount_info(String c_discount_info) {
		this.c_discount_info = c_discount_info;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getM_pk() {
		return m_pk;
	}
	public void setM_pk(String m_pk) {
		this.m_pk = m_pk;
	}
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public int getC_isuse() {
		return c_isuse;
	}
	public void setC_isuse(int c_isuse) {
		this.c_isuse = c_isuse;
	}
	
	
}
