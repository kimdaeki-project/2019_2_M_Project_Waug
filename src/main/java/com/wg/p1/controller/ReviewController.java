package com.wg.p1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.ReviewVO;
import com.wg.p1.service.ReviewService;


@Controller
@RequestMapping("/reviews/**")
public class ReviewController {
	@Inject
	ReviewService reviewService;
	
	@RequestMapping("review_list")
	public void review() throws Exception{
		
		
	}
	
	@PostMapping("review_write")
	public ModelAndView review_Write(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewService.reviewWrite(reviewVO);
		
		mv.setViewName("reviews/review_list");
		return mv;
		
	}
}
