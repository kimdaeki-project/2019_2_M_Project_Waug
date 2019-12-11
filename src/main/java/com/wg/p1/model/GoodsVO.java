package com.wg.p1.model;

import java.sql.Date;
import java.util.List;

public class GoodsVO {
	private int goods_num;
	private int price;
	private int discount;
	private String coupon;
	private String location;
	private Date able;
	private int city_num;
	private int o_num;
	private int qtt;
	private String title;
	private int t_num;
	private String img;
	private List<WishListVO> wishlist;
	private String t_title;
	private String city_name;
	
	
	public String getT_title() {
		return t_title;
	}
	public void setT_title(String t_title) {
		this.t_title = t_title;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public List<WishListVO> getWishlist() {
		return wishlist;
	}
	public void setWishlist(List<WishListVO> wishlist) {
		this.wishlist = wishlist;
	}
	
	public int getGoods_num() {
		return goods_num;
	}
	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getCoupon() {
		return coupon;
	}
	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Date getAble() {
		return able;
	}
	public void setAble(Date able) {
		this.able = able;
	}
	public int getCity_num() {
		return city_num;
	}
	public void setCity_num(int city_num) {
		this.city_num = city_num;
	}
	public int getO_num() {
		return o_num;
	}
	public void setO_num(int o_num) {
		this.o_num = o_num;
	}
	public int getQtt() {
		return qtt;
	}
	public void setQtt(int qtt) {
		this.qtt = qtt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getT_num() {
		return t_num;
	}
	public void setT_num(int t_num) {
		this.t_num = t_num;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
