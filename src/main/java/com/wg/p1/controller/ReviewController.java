package com.wg.p1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wg.p1.serv.ReviewService;

@Controller
@RequestMapping("/reviews/**")
public class ReviewController {
	@Inject
	ReviewService reviewService;
	
	@RequestMapping("review_list")
	public void review() throws Exception{
		
		
	}
}
