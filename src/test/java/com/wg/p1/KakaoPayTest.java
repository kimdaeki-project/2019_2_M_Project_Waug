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

	
	
}
