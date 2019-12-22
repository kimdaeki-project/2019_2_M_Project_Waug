package com.wg.p1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.wg.p1.model.MemberVO;
import com.wg.p1.model.ReservationVO;

@Component
public class ReservationDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="reservationMapper.";
	
	
	public int addReservation(ReservationVO reservationVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addReservation", reservationVO);
	}
	
	public List<ReservationVO> selectMyOrders(MemberVO memberVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectMyOrders", memberVO);
	}
	
	public List<ReservationVO> selectMyPoint(MemberVO memberVO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"selectMyPoint", memberVO);
	}
	
	public int selectTotalPoint(MemberVO memberVO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectTotalPoint", memberVO);
	}
}
