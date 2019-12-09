package com.wg.p1.model;



import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class KakaoPayVO {

	private String tid;	//o
	private String next_redirect_pc_url;	//o
	private Date created_at;	//o
	
	
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getNext_redirect_pc_url() {
		return next_redirect_pc_url;
	}
	public void setNext_redirect_pc_url(String next_redirect_pc_url) {
		this.next_redirect_pc_url = next_redirect_pc_url;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	
	
}
