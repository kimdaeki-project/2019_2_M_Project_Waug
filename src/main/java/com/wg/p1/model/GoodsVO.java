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
	private InfoVO infoVO;
	private Goods_imgVO goods_imgVO;
	private IncludedVO includedVO;
	private Not_IncludedVO not_IncludedVO;
	private RememberVO rememberVO;
	private CancellationVO cancellationVO;
	private How_to_useVO how_to_useVO;
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
	public List<WishListVO> getWishlist() {
		return wishlist;
	}
	public void setWishlist(List<WishListVO> wishlist) {
		this.wishlist = wishlist;
	}
	public InfoVO getInfoVO() {
		return infoVO;
	}
	public void setInfoVO(InfoVO infoVO) {
		this.infoVO = infoVO;
	}
	public Goods_imgVO getGoods_imgVO() {
		return goods_imgVO;
	}
	public void setGoods_imgVO(Goods_imgVO goods_imgVO) {
		this.goods_imgVO = goods_imgVO;
	}
	public IncludedVO getIncludedVO() {
		return includedVO;
	}
	public void setIncludedVO(IncludedVO includedVO) {
		this.includedVO = includedVO;
	}
	public Not_IncludedVO getNot_IncludedVO() {
		return not_IncludedVO;
	}
	public void setNot_IncludedVO(Not_IncludedVO not_IncludedVO) {
		this.not_IncludedVO = not_IncludedVO;
	}
	public RememberVO getRememberVO() {
		return rememberVO;
	}
	public void setRememberVO(RememberVO rememberVO) {
		this.rememberVO = rememberVO;
	}
	public CancellationVO getCancellationVO() {
		return cancellationVO;
	}
	public void setCancellationVO(CancellationVO cancellationVO) {
		this.cancellationVO = cancellationVO;
	}
	public How_to_useVO getHow_to_useVO() {
		return how_to_useVO;
	}
	public void setHow_to_useVO(How_to_useVO how_to_useVO) {
		this.how_to_useVO = how_to_useVO;
	}
	
	
	
	
	
}
