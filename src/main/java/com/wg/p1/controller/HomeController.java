package com.wg.p1.controller;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private GoodsService goodsService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView goods(GoodsVO goodsVO, HttpSession session)throws Exception{
		ArrayList<GoodsVO> ar = new ArrayList<GoodsVO>();
		ModelAndView mv = new ModelAndView();
		ar = goodsService.goodsRecomand(goodsVO);
		session.getAttribute("wishlistVO");
		mv.addObject("list", ar);
		/*
		 * mv.addObject("wishlistVO", session.getAttribute("wishlistVO"));
		 */		
		System.out.println(ar.get(0).getTitle());
		System.out.println(ar.get(1).getTitle());
		mv.setViewName("home");
		
		return mv;
	}
		

	@RequestMapping(value = "/goods/goods_area", method = RequestMethod.GET)
	public void area() {
	}




}
