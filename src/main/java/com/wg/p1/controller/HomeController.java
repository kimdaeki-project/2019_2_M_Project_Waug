package com.wg.p1.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private GoodsService goodsService;
	
/*	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView goods(GoodsVO goodsVO, HttpSession session)throws Exception{
		List<GoodsVO> ar = new ArrayList<GoodsVO>();
		ModelAndView mv = new ModelAndView();
		ar = goodsService.goodsRecomand(goodsVO);
		List<NationVO> cityar = goodsService.CityList();
		
		session.getAttribute("wishlistVO");
		mv.addObject("list", ar);
		mv.addObject("citylist", cityar);
		
		 * mv.addObject("wishlistVO", session.getAttribute("wishlistVO"));
		 		
	}*/
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView goodss(HttpSession session, MemberVO memberVO, GoodsVO goodsVO)throws Exception{
		ArrayList<GoodsVO> ar = new ArrayList<GoodsVO>();
		ModelAndView mv = new ModelAndView();
		
		memberVO = (MemberVO)session.getAttribute("memberVO");
		
		
		if(memberVO==null) {
			memberVO = new MemberVO();
			memberVO.setM_pk("a");
		}
		List<NationVO> cityar = goodsService.CityList();
		
		ar = goodsService.goodsRecomand(memberVO);
		session.getAttribute("wishlistVO");
		mv.addObject("citylist", cityar);
		/* mv.addObject("memberVO", memberVO); */
		mv.addObject("list", ar);
		mv.setViewName("home");
		
		return mv;
	}
	
	


	@RequestMapping("order/***")
	public void orderFolder() {

	}

}
