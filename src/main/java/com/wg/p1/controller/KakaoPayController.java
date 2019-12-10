package com.wg.p1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;

import com.wg.p1.service.KakaoPayService;

@Controller
public class KakaoPayController {

	@Inject
	private KakaoPayService kakaoPayService;
	
}
