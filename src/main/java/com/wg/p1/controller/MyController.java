package com.wg.p1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wg.p1.model.MemberVO;

@Controller
@RequestMapping(value = "my/**")
public class MyController {

	
	@GetMapping(value = "mypage")
	public void my(MemberVO memberVO) {
	}
	
	@PostMapping(value = "mypage")
	public void my() {
	}
	
}
