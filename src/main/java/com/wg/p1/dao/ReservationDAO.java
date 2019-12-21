package com.wg.p1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.wg.p1.model.ReservationVO;

@Component
public class ReservationDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="reservationMapper.";
	
	
	public int addReservation(ReservationVO reservationVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addReservation", reservationVO);
	}
}
