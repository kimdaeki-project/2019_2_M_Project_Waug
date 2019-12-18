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
	public void infoInsert()throws Exception{
		
	}
	
	//@Test
	public void couponTest()	throws Exception{
		CouponMaker cm=new CouponMaker();
		String coupon=cm.makeCoupon(9);
		
		System.out.println("Test : coupon : "+ coupon);
		assertNotNull(coupon);
	}
	
	//@Test
	public void goodsDelete()throws Exception{
		GoodsVO good=new GoodsVO();
		good.setGoods_num(88);
		int result=goodsDAO.goodsDelete(good);
		
		assertEquals(1, result);
	}
	
	
	
	
	
	
	
	
}
