package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;
import javax.xml.ws.ServiceMode;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.ReservationDAO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.ReservationVO;

@Service
public class ReservationService {

	@Inject
	private ReservationDAO reservationDAO;
	
	public int addReservation(ReservationVO reservationVO)throws Exception{
		return reservationDAO.addReservation(reservationVO);
	}
	
	public List<ReservationVO> selectMyOrders(MemberVO memberVO)throws Exception{
		return reservationDAO.selectMyOrders(memberVO);
	}
	
	public List<ReservationVO> selectMyPoint(MemberVO memberVO)throws Exception{
		return reservationDAO.selectMyPoint(memberVO);
	}
	
	public int selectTotalPoint(MemberVO memberVO) throws Exception{
		return reservationDAO.selectTotalPoint(memberVO);
	}
}
