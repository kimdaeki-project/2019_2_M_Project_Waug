package com.wg.p1.model;

public class Goods_imgVO {

//	CREATE TABLE goods_img
//	(
//	    goods_num    NUMBER(8)         NOT NULL, 
//	    img_name     VARCHAR2(100)      NOT NULL, 
//	    img_des      VARCHAR2(1000)    NULL, 
//	    step         NUMBER(2)         NOT NULL
//	)
	private String img_name;
	private String img_des;
	private int step;
	
	public String getImg_name() {
		return img_name;
	}
	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}
	public String getImg_des() {
		return img_des;
	}
	public void setImg_des(String img_des) {
		this.img_des = img_des;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	
}
