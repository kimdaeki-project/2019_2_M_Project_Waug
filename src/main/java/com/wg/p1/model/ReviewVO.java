package com.wg.p1.model;

import java.util.List;

public class ReviewVO {
	
	private int rv_num;
	private int goods_num;
	private String email;
	private String rv_writer;
	private String rv_contents;
	private String rv_reg_date;
	private int rv_score;
	private int rv_ex;
	private String rv_aname;
	private String rv_adate;
	private String rv_acontents;
	private double rv_avg;
	private int rv_total;
	private List<ReviewImgVO> images;
	
	
	public List<ReviewImgVO> getImages() {
		return images;
	}
	public void setImages(List<ReviewImgVO> images) {
		this.images = images;
	}
	public double getRv_avg() {
		return rv_avg;
	}
	public void setRv_avg(double rv_avg) {
		this.rv_avg = rv_avg;
	}
	public int getRv_total() {
		return rv_total;
	}
	public void setRv_total(int rv_total) {
		this.rv_total = rv_total;
	}
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRv_writer() {
		return rv_writer;
	}
	public void setRv_writer(String rv_writer) {
		this.rv_writer = rv_writer;
	}
	public String getRv_contents() {
		return rv_contents;
	}
	public void setRv_contents(String rv_contents) {
		this.rv_contents = rv_contents;
	}
	public String getRv_reg_date() {
		return rv_reg_date;
	}
	public void setRv_reg_date(String rv_reg_date) {
		this.rv_reg_date = rv_reg_date;
	}
	public int getRv_score() {
		return rv_score;
	}
	public void setRv_score(int rv_score) {
		this.rv_score = rv_score;
	}
	public int getRv_ex() {
		return rv_ex;
	}
	public void setRv_ex(int rv_ex) {
		this.rv_ex = rv_ex;
	}
	public String getRv_aname() {
		return rv_aname;
	}
	public void setRv_aname(String rv_aname) {
		this.rv_aname = rv_aname;
	}
	public String getRv_adate() {
		return rv_adate;
	}
	public void setRv_adate(String rv_adate) {
		this.rv_adate = rv_adate;
	}
	public String getRv_acontents() {
		return rv_acontents;
	}
	public void setRv_acontents(String rv_acontents) {
		this.rv_acontents = rv_acontents;
	}
	
}
