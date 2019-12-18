package com.wg.p1.model;

public class CouponListVO {

	private String c_code;
	private String c_title;
	private String c_duration;
	private String c_discount_info;
	private int discount;
	
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
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
	
	
}
