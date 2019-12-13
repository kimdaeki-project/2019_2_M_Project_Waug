package com.wg.p1;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.model.WishListVO;
import com.wg.p1.util.CouponMaker;

public class GoodsTest extends testAbstractCase{

	@Inject
	private GoodsDAO goodsDAO;

	private GoodsVO goodsVO;
	
	//@Test
	public void selectOneGoods() throws Exception{	
		goodsVO=goodsDAO.goosSelectOne(7);	//test ok;
		System.out.println("test************************");
		System.out.println(goodsVO.getCity_num());
		System.out.println(goodsVO.getImg());
		System.out.println(goodsVO.getLocation());
		assertNotNull(goodsVO);
	}
	//@Test
	public void selectGoodsInfo() throws Exception{
		System.out.println("test************************");
		InfoVO info=goodsDAO.selectGoodsInfo(7);
		System.out.println(info.getCancel());
		System.out.println(info.getDelivery_time());
		System.out.println(info.getDuration());
		System.out.println(info.getLanguage());
		System.out.println(info.getPeople());
		System.out.println(info.getPick_up());
		
		assertNotNull(info);
	}
	
	//@Test
	public void insertgoodsVO()	throws Exception{
		
		Date date = new Date(119, 11, 12);
		GoodsVO goodsVO=new GoodsVO();
		
		
		goodsVO.setPrice(2400);
		goodsVO.setDiscount(42);
		goodsVO.setCoupon("232");
		goodsVO.setLocation("newyork");
		goodsVO.setAble(date);
		goodsVO.setCity_num(4);
		goodsVO.setO_num(2);
		goodsVO.setQtt(2);
		goodsVO.setTitle("titel");
		goodsVO.setT_num(2);
		goodsVO.setImg("./resources/images/test.jpg");
		//wish
		//info
		goodsVO.setCate_num(1);
		goodsVO.setProgram("12");
		goodsVO.setCharming("12");
		goodsVO.setIncluded("12");
		goodsVO.setNot_included("!2");
		goodsVO.setHow_to_use("12");
		goodsVO.setRemember("12");
		goodsVO.setCancel("12");
		goodsVO.setImg1("12");
		goodsVO.setImg2("12");
		goodsVO.setImg3("12");
		goodsVO.setImg4("12");
		int result=goodsDAO.goodsInsert(goodsVO);
		System.out.println(result);
		InfoVO info=new InfoVO();
		info.setGoods_num(goodsVO.getGoods_num());
		info.setBoucher("바우처");
		info.setCancel("환불가능");
		info.setDelivery_time("즉시사용");
		info.setLanguage("언어");
		info.setPeople("2명");
		info.setPick_up("호텔 픽업");
		info.setUsing_time("8 시간");
		info.setDuration("듀레이션");
		
		int result2=goodsDAO.infoInsert(info);
		assertEquals(1, result);
		assertEquals(1, result2);
	}
	
	//@Test
	public void infoInsert()throws Exception{
		
	}
	
	@Test
	public void couponTest()	throws Exception{
		CouponMaker cm=new CouponMaker();
		String coupon=cm.makeCoupon(9);
		
		System.out.println("Test : coupon : "+ coupon);
		assertNotNull(coupon);
	}
}
