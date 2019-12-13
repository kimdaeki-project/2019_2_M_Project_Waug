package com.wg.p1.model;

public class InfoVO {

//	CREATE TABLE info
//	(
//	    goods_num        NUMBER(8)        NOT NULL, 
//	    delivery_time    VARCHAR2(100)    NULL, 
//	    duration         VARCHAR2(100)    NULL, 
//	    language         VARCHAR2(100)    NULL, 
//	    boucher          VARCHAR2(100)    NULL, 
//	    cancel           VARCHAR2(100)    NULL, 
//	    using_time       VARCHAR2(100)    NULL, 
//	    pick_up          VARCHAR2(100)    NULL, 
//	    people           VARCHAR2(100)    NULL, 
//	    CONSTRAINT INFO_PK PRIMARY KEY (goods_num)
//	)
	private String delivery_time;		//확정
	private String duration;			//사용날짜 / 지정일사용
	private String language;
	private String boucher;
	private String cancel;
	private String using_time;			//이용시간
	private String pick_up;
	private String people;
	private int goods_num;	
	
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public String getDelivery_time() {
		return delivery_time;
	}
	public void setDelivery_time(String delivery_time) {
		this.delivery_time = delivery_time;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getBoucher() {
		return boucher;
	}
	public void setBoucher(String boucher) {
		this.boucher = boucher;
	}
	public String getCancel() {
		return cancel;
	}
	public void setCancel(String cancel) {
		this.cancel = cancel;
	}
	public String getUsing_time() {
		return using_time;
	}
	public void setUsing_time(String using_time) {
		this.using_time = using_time;
	}
	public String getPick_up() {
		return pick_up;
	}
	public void setPick_up(String pick_up) {
		this.pick_up = pick_up;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	
	
}
