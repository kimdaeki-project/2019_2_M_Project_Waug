package com.wg.p1;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.dao.AdminDAO;
import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.dao.ReservationDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.ReservationVO;
import com.wg.p1.model.WishListVO;
import com.wg.p1.service.AdminService;
import com.wg.p1.util.CouponMaker;

public class GoodsTest extends testAbstractCase{

	@Inject
	private GoodsDAO goodsDAO;

	private GoodsVO goodsVO;
	
	@Inject
	private AdminDAO adminDAO;
	
	@Inject
	private ReservationDAO reservationDAO;
	@Inject
	private AdminService adminService;
	
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
	
	//@Test
	public void selectMyOrder()throws Exception{
		MemberVO memberVO=new MemberVO();
		memberVO.setM_pk("w_adf@a");
		List<ReservationVO> reservationVOs=reservationDAO.selectMyOrders(memberVO);
		
		for(int i=0;i<reservationVOs.size();i++) {
			//o_time o_time2,o_people o_people2, o_date o_date2, img img2, title title2
			reservationVOs.get(i).getO_num();
			System.out.println("reser_num : "+reservationVOs.get(i).getRes_num());
			//System.out.println("reservationVOs.get(i).getRes_date() : "+reservationVOs.get(i).getRes_date());
			//System.out.println(reservationVOs.get(i).get);
		}
		assertNotNull(reservationVOs);
	}
	
	//@Test
	public void testd()throws Exception{
		int[] arr=new int[5];
		arr=adminService.reservation_date_s();
		
		assertNotNull(arr);
//		int date1=adminDAO.reservation_date_1();
//		System.out.println(date1);
//		assertNotNull(date1);
	}
	
	
	
	
	
}
