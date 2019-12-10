package com.wg.p1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.service.KakaoPayService;

public class KakaoPayTest extends testAbstractCase{

	
	private KakaoPayService kakaoService;
	@Test
	public void test() {
		assertNotNull(kakaoService);
	}

}
