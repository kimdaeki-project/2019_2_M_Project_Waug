package com.wg.p1.service;

import javax.inject.Inject;
import javax.xml.ws.ServiceMode;

import com.wg.p1.dao.ReservationDAO;
import com.wg.p1.model.ReservationVO;

@ServiceMode
public class ReservationService {

	@Inject
	private ReservationDAO reservationDAO;
	
	public int addReservation(ReservationVO reservationVO)throws Exception{
		return reservationDAO.addReservation(reservationVO);
	}
}
