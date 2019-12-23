package com.wg.p1.model;

import java.sql.Date;

public class ReservationVO {

//	RES_NUM	NUMBER(8,0)
//	RES_DATE	DATE
//	O_NUM	NUMBER(8,0)
//	M_PK	VARCHAR2(100 BYTE)
//	C_CODE	VARCHAR2(20 BYTE)
//	POINT	NUMBER(8,0)
//	TOTALPRICE	NUMBER(10,0)
//	GOODS_NUM	NUMBER(8,0)
//	RES_REF	NUMBER(8,0)
	
	private int res_num;
	public String getTitle2() {
		return title2;
	}
	public void setTitle2(String title2) {
		this.title2 = title2;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public int getO_people2() {
		return o_people2;
	}
	public void setO_people2(int o_people2) {
		this.o_people2 = o_people2;
	}
	public String getO_date2() {
		return o_date2;
	}
	public void setO_date2(String o_date2) {
		this.o_date2 = o_date2;
	}
	public String getO_time2() {
		return o_time2;
	}
	public void setO_time2(String o_time2) {
		this.o_time2 = o_time2;
	}
	private Date res_date;
	private int o_num;
	
	private String c_code;
	private int point;
	private int totalprice;
	private int goods_num;
	private int res_ref;
	private String pay;
	private String tid;
	private String title2;
	private String img2;
	private int o_people2;
	private String o_date2;
	private String o_time2;
	private String m_pk;
	
	public String getM_pk() {
		return m_pk;
	}
	public void setM_pk(String m_pk) {
		this.m_pk = m_pk;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public int getRes_num() {
		return res_num;
	}
	public void setRes_num(int res_num) {
		this.res_num = res_num;
	}
	public Date getRes_date() {
		return res_date;
	}
	public void setRes_date(Date res_date) {
		this.res_date = res_date;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public int getRes_ref() {
		return res_ref;
	}
	public void setRes_ref(int res_ref) {
		this.res_ref = res_ref;
	}
	
	
}
