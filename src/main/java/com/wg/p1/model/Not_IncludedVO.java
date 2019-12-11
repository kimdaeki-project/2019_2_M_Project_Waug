package com.wg.p1.model;

public class Not_IncludedVO {

//	--not_included
//	drop table not_included
//	CREATE TABLE not_included
//	(
//	    goods_num    NUMBER(8)         NOT NULL, 
//	    ninc_des     VARCHAR2(1000)    NULL   
//	)
	private String ninc_des;

	public String getNinc_des() {
		return ninc_des;
	}

	public void setNinc_des(String ninc_des) {
		this.ninc_des = ninc_des;
	}
	
	
}
