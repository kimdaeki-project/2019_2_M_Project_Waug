package com.wg.p1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wg.p1.service.KakaoPayService;

@Controller
@RequestMapping("kakao/**")
public class KakaoPayController {

	@Inject
	private KakaoPayService kakaoPayService;
	
	@GetMapping("kakaoPay")
    public void kakaoPayGet() {
        
    }
	
	@PostMapping("kakaoPay")
    public String kakaoPay() {
      System.out.println("kakaoPay post............................................");
        
        return "redirect:" + kakaoPayService.kakaoPayReady();
    }
	
	@GetMapping("kakaoPaySuccess")
    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
       System.out.println("kakaoPaySuccess get............................................");
       System.out.println("kakaoPaySuccess pg_token : " + pg_token);
        
    }
}
