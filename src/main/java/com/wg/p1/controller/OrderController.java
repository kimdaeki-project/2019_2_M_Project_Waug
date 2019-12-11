package com.wg.p1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@GetMapping("calendar")
	public void calendar(int goods_num) {
		System.out.println("test : orderController > calendar(int "+goods_num+")");
	}
	
}
