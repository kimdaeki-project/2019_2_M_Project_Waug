package com.wg.p1.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.CouponVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.MyCouponVO;


@Repository
public class CouponDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="myMapper.";
	
	public int myCouponAdd(MyCouponVO myCouponVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"myCouponAdd",myCouponVO);
	}
	
	public List<CouponVO> myCoupon(MemberVO memberVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"myCoupon", memberVO);
	}
	
	public int myCouponBeforeCount(MemberVO memberVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"myCouponBeforeCount", memberVO);
	}

	public int myCouponAfterCount(MemberVO memberVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"myCouponAfterCount", memberVO);
	}
	
	public int couponCount(String c_code, String m_pk) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("c_code", c_code);
		map.put("m_pk", m_pk);
		return sqlSession.selectOne(NAMESPACE+"couponCount", map);
	}
}
