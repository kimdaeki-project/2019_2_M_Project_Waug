package com.wg.p1;

import static org.junit.Assert.*;

import java.sql.Date;
import java.time.LocalDate;
import java.util.Calendar;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.dao.ReservationDAO;
import com.wg.p1.model.ReservationVO;
import com.wg.p1.service.KakaoPayService;

public class KakaoPayTest extends testAbstractCase{

	@Inject
	private KakaoPayService kakaoService;
	@Inject
	private ReservationDAO reservationDAO;
	//@Test
	public void test() {
		assertNotNull(kakaoService);
	}

	@Test
	public void test1()throws Exception{
		ReservationVO reservationVO=new ReservationVO();
		ReservationVO reservation=new ReservationVO();
		
		LocalDate date = LocalDate.of(2018, 10, 05);
		Date d = new Date(30, 3, 1);
		Calendar c = Calendar.getInstance ( );
		c.setTime ( d );


        reservation.setRes_date(d);
        reservation.setO_num(141);
        System.out.println(reservation.getO_num());			//153
        reservation.setM_PK("w_adf@a");
        System.out.println(reservation.getM_PK());			//w_adf@a
        reservation.setC_code("test_c_code");
        System.out.println(reservation.getC_code());		//test_c_code
        int point=(int) (100);	//get point
        reservation.setPoint(point);
        System.out.println(reservation.getPoint());			//3847
        reservation.setTotalprice(10000);
        System.out.println(reservation.getTotalprice());	//38475
        reservation.setGoods_num(7);
        System.out.println(reservation.getGoods_num());		//164
        reservation.setPay("kakaoPay");
        System.out.println(reservation.getPay());			//kakaoPay
        reservation.setTid("T2706590091441923702");
        System.out.println(reservation.getTid());			//T2706580668283676212
        int reservation_result=reservationDAO.addReservation(reservation);
        System.out.println("kakaoService.reservation_result : "+reservation_result);
       
        int result=reservationDAO.addReservation(reservationVO);
        assertEquals(1, result);
	}
	
}
