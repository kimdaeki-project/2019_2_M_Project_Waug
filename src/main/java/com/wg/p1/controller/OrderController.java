package com.wg.p1.controller;

import java.util.List;

import javax.inject.Inject;
import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.BookerInfoVO;


import com.wg.p1.model.OptionVO;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.service.GoodsService;
import com.wg.p1.service.OrderService;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@Inject
	private GoodsService goodsService;
	@Inject
	private OrderService orderService;
	private GoodsVO goodsVO;


	@GetMapping("coupon")
	public void coupon(String c_code) throws Exception{
		System.out.println(c_code);  
	}
	
	@GetMapping("calendar")
	public Model calendar(int goods_num, Model model) throws Exception {
		
		 System.out.println("test : orderController > calendar(int "+goods_num+")");
		 goodsVO=goodsService.selectOneGoods(goods_num); 
		// List<GoodsOptionVO> goodsOptionVO=orderService.selectOptionTime(); 
		 model.addAttribute("goods",goodsVO); 
		 //model.addAttribute("goodsOption", goodsOptionVO);
		 

		return model;
	}
	
	@PostMapping("info")
	public ModelAndView info( int goods_num, int people, HttpSession session) throws Exception{
		ModelAndView mv=new ModelAndView();
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		GoodsVO goodsVO=goodsService.selectOneGoods(goods_num);
		String msg="로그인이 필요합니다.";
		String path="../member/login";
//		if(memberVO==null) {
//			mv.addObject("msg", msg);
//			mv.addObject("path", path);
//			mv.setViewName("./common/common_result");
//			return mv;
//		}else {			
			//System.out.println(memberVO.getEmail());
			//System.out.println("goodsOptionVO.getO_time() : "+goodsOptionVO.getO_time());
			//System.out.println("GoodsVO.getNumbaer : "+goodsVO.getGoods_num() );
			//System.out.println("people : "+ people);
			//info 페이지로 넘겨주기
			mv.setViewName("./order/info");
			mv.addObject("people", people);
			mv.addObject("goods", goodsVO);
			mv.addObject("member", memberVO);
		//	mv.addObject("goodsOption", goodsOptionVO);
			return mv;
	}

	public Model info(OptionVO optionVO, GoodsVO goodsVO, int people, Model model) throws Exception{
		System.out.println("goodsOptionVO.getO_time() : "+optionVO.getO_time());
		System.out.println("GoodsVO.getNumbaer : "+goodsVO.getGoods_num() );
		System.out.println("people : "+ people);
		model.addAttribute("people", people);
		return model;
	}
	
	@PostMapping("order1")
	public ModelAndView order(int goods_num, ModelAndView mv,String[] firstName,String[] lastName, String[] passport, int[] b_gender,String sns,String b_visit,String b_name, String b_email)throws Exception{
		GoodsVO goodsVO=goodsService.selectOneGoods(goods_num);
		
		orderService.insertBookerInfo(firstName, lastName, passport, b_gender, sns, b_visit, b_name, b_email);
		mv.addObject("goods", goodsVO);
		mv.setViewName("order/order");
		
		return mv;
	}
//	goods		calendar		info			order
//	get			get				post			post	
//	-goods_num	-goods_num		-booker_info	-reservation	
//								-goods		
	
}