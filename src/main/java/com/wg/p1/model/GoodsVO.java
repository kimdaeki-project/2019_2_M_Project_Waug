package com.wg.p1.model;

import java.sql.Date;
import java.util.List;

public class GoodsVO {
	private int goods_num;					//상품 번호
	private int price;						//상품 가격
	private int discount;					//할인가격
	private String coupon;					//쿠폰
	private String location;				//지역
	private Date able;						//사용가능 날짜
	private int city_num;					//도시 번호
	private int o_num;						//옵션 번호
	private int qtt;						//상품 갯수
	private String title;					//상품 제목
	private int t_num;						//테마 번호
	private String img;						//대표 이미지(썸네일)
	private List<WishListVO> wishlist;		//위시리스트		//list!
	private InfoVO infoVO;					//상품 정보		//object
	private int cate_num;				//도시 이름
	private String program;
	private String charming;
	private String included;
	private String not_included;
	private String how_to_use;
	private String remember;
	private String cancel;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	
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
	public int getCate_num() {
		return cate_num;
	}
	public void setCate_num(int cate_num) {
		this.cate_num = cate_num;
	}
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
	}
	public String getCharming() {
		return charming;
	}
	public void setCharming(String charming) {
		this.charming = charming;
	}
	public String getIncluded() {
		return included;
	}
	public void setIncluded(String included) {
		this.included = included;
	}
	public String getNot_included() {
		return not_included;
	}
	public void setNot_included(String not_included) {
		this.not_included = not_included;
	}
	public String getHow_to_use() {
		return how_to_use;
	}
	public void setHow_to_use(String how_to_use) {
		this.how_to_use = how_to_use;
	}
	public String getRemember() {
		return remember;
	}
	public void setRemember(String remember) {
		this.remember = remember;
	}
	public String getCancel() {
		return cancel;
	}
	public void setCancel(String cancel) {
		this.cancel = cancel;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	
	

	
	
	
}
