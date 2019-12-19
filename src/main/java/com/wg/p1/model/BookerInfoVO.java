package com.wg.p1.model;

import java.sql.Date;

public class BookerInfoVO {

//	B_VISIT	VARCHAR2(20 BYTE)
//	B_HASID	NUMBER(1,0)
//	B_GENDER	NUMBER(1,0)
//	B_REF	VARCHAR2(20 BYTE)
	
	private int b_num;			//예약시퀀스
	private String b_name;
	private String sns;		//sns 계정
	private String b_visit;		//방문시간
	private int b_gender;
	public int getB_gender() {
		return b_gender;
	}
	public void setB_gender(int b_gender) {
		this.b_gender = b_gender;
	}
	private int b_ref;	//ref : 같은 예약끼리 묶어놓기 위해서
	private String firstName;
	private String lastName;
	private String passport;
	private String b_email;	//바우처 수신용 이메일
	
	

	public String getB_email() {
		return b_email;
	}
	public void setB_email(String b_email) {
		this.b_email = b_email;
	}
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getSns() {
		return sns;
	}
	public void setSns(String sns) {
		this.sns = sns;
	}
	public String getB_visit() {
		return b_visit;
	}
	public void setB_visit(String b_visit) {
		this.b_visit = b_visit;
	}
	
	
	public int getB_ref() {
		return b_ref;
	}
	public void setB_ref(int b_ref) {
		this.b_ref = b_ref;
	}
	
	
	
}
