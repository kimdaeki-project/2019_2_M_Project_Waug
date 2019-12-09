package com.wg.p1.controller;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wg.p1.model.KakaoPayVO;
import com.wg.p1.service.KakaoPayService;


@Controller
@RequestMapping("kakao/**")
public class KakaoPayController {

	
	
	@RequestMapping("kakaoPay")
	public void kakao_get() {
		System.out.println("kakao_get() ok");
		
	}
	
	@RequestMapping("kakaoPaySuccess")
	public void kakaoPaySuccess() {
		
	}

	@RequestMapping("kakaoPayCancel")
	public void kakaoPayCancel() {
		
	}
	
	@RequestMapping("kakaoPayFail")
	public void kakaoPayFail() {
		
	}
	
	@PostMapping("kakaoPay")
	public String kakaoPay() throws Exception {
	System.out.println("kakao_post");
	KakaoPayService kakaoPayService=new KakaoPayService();
	System.out.println(kakaoPayService.test());
	 System.out.println("kakaoPay post............................................");
	 String test=kakaoPayService.kakaoPayReady();
	 System.out.println("test : "+test);
     return "redirect:" + kakaoPayService.kakaoPayReady();
	}
	
	 @GetMapping("/kakaoPaySuccess")
	    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
	        System.out.println("kakaoPaySuccess get............................................");
	        System.out.println("kakaoPaySuccess pg_token : " + pg_token);
	        
	    }
}
