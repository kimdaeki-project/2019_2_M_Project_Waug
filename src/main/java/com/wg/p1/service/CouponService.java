package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.CouponDAO;
import com.wg.p1.model.CouponVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.MyCouponVO;

@Service
public class CouponService {

	@Inject
	private CouponDAO couponDAO;
	
	public int myCouponAdd(MyCouponVO myCouponVO) throws Exception{
		return couponDAO.myCouponAdd(myCouponVO);
	}

	public List<CouponVO> myCoupon(MemberVO memberVO) throws Exception{
		return couponDAO.myCoupon(memberVO);
	}
	
	public int myCouponBeforeCount(MemberVO memberVO) throws Exception{
		return couponDAO.myCouponBeforeCount(memberVO);
	}
	public int myCouponAfterCount(MemberVO memberVO) throws Exception{
		return couponDAO.myCouponAfterCount(memberVO);
	}
	
	public int couponCount(String m_pk, String c_code) throws Exception{
		return couponDAO.couponCount(c_code, m_pk);
	}
}
