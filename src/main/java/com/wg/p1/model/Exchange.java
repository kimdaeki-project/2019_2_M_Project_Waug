package com.wg.p1.model;

public class Exchange {
	
	private double rate;
	private String logo;
	private String text;
	
	public String getText() {
		if(text ==null) {
			text="KRW 대한민국 원(₩)";
		}
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public double getRate() {
		if(rate < 0.0001) {
			rate = 1;
		}
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public String getLogo() {
		if(logo == null) {
			logo="₩";
		}
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	
	
	
	
}
