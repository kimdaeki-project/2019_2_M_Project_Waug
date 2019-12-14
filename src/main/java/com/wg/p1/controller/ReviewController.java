package com.wg.p1.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.ReviewVO;
import com.wg.p1.service.ReviewService;
import com.wg.p1.util.Pager;


@Controller
@RequestMapping("/reviews/**")
public class ReviewController {
	@Inject
	ReviewService reviewService;
	
	@RequestMapping("review_list")
	public ModelAndView review(Pager pager, ModelAndView mv) throws Exception{
		List<ReviewVO> ar = reviewService.reviewList(pager);
		mv.addObject("list", ar);
		mv.addObject("totalPage", pager.getTotalPage());
		mv.setViewName("reviews/review_list");
		return mv;
		
	}
	@RequestMapping("review_lists")
	public ModelAndView reviews(Pager pager, ModelAndView mv) throws Exception{
		List<ReviewVO> ar = reviewService.reviewList(pager);
		mv.addObject("list", ar);
		mv.setViewName("common/reviewAjax");
		return mv;
	}
	
	@PostMapping("review_write")
	public String review_Write(ReviewVO reviewVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = reviewService.reviewWrite(reviewVO);
		
		//mv.setViewName("reviews/review_list");
		return "redirect:review_list";
		
	}
	@GetMapping("review_delete")
	public ModelAndView reviewDelete(ReviewVO reviewVO) throws Exception{
		int result = reviewService.reviewDelete(reviewVO);
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	@GetMapping("reviewSelect")
	public ModelAndView reviewSelect(ReviewVO reviewVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		reviewVO = reviewService.reviewSelect(reviewVO);
		mv.addObject("select", reviewVO);
		mv.setViewName("common/reviewselectAjax");
		
		return mv;
		
	}
	@PostMapping("review_update")
	public String reviewUpdate(ReviewVO reviewVO) throws Exception{
		int result = reviewService.reviewUpdate(reviewVO);
		
		return "redirect:review_list";
	}
	@PostMapping("review_reply")
	public String reviewReply(ReviewVO reviewVO) throws Exception{
		int result = reviewService.reviewReply(reviewVO);
		
		return "redirect:review_list";
	}
	
	@PostMapping("reviewImages")
	public ModelAndView reviewImages(MultipartFile file, ModelAndView mv, HttpSession session) throws Exception{
		System.out.println("hello");
		System.out.println(file.getOriginalFilename());
		String filename = reviewService.reviewImage(file, session);
		mv.addObject("filename", filename);
		mv.setViewName("common/reviewFilesAjax");
		return mv;
	}
}
