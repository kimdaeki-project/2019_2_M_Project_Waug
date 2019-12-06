package com.wg.p1.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wg.p1.model.MemberVO;
import com.wg.p1.service.MemberServiceImpl;

@Controller
@RequestMapping(value = "/my/**")
public class MyController {

	@Inject
	MemberServiceImpl memberService;
	
	@RequestMapping(value = "mypage")
	public void my(HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");

	
	}
	
	@PostMapping(value = "mypage")
	public void my() {
		
	}
	
}
