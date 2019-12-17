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

import com.wg.p1.model.BookerInfoVO;
import com.wg.p1.model.GoodsOptionVO;
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
	
	@GetMapping("calendar")
	public Model calendar(int goods_num, Model model) throws Exception {
		System.out.println("test : orderController > calendar(int "+goods_num+")");
		goodsVO=goodsService.selectOneGoods(goods_num);
		List<GoodsOptionVO> goodsOptionVO=orderService.selectOptionTime();
		model.addAttribute("goods", goodsVO);
		model.addAttribute("goodsOption", goodsOptionVO);
		return model;
	}
	
	@PostMapping("info")
	public ModelAndView info(GoodsOptionVO goodsOptionVO, GoodsVO goodsVO, int people, Model model, BookerInfoVO bookerInfoVO, HttpSession session) throws Exception{
		ModelAndView mv=new ModelAndView();
		//세션에서 아이디 받아오기
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		
	//	System.out.println("SESSEION : EMAIL GET :::::"+memberVO.getEmail());
		
		
		String msg="로그인이 필요합니다.";
		String path="redirect :../member/login";
		if(memberVO.getEmail()==null) {
			mv.addObject("msg", msg);
			mv.addObject("path", path);
			mv.setViewName("../common/common_result");
			return mv;
		}else {			
			System.out.println(memberVO.getEmail());
			System.out.println("goodsOptionVO.getO_time() : "+goodsOptionVO.getO_time());
			System.out.println("GoodsVO.getNumbaer : "+goodsVO.getGoods_num() );
			System.out.println("people : "+ people);
			model.addAttribute("people", people);
			return mv;
		}
	}
	
//	goods		calendar		info			order
//	get			get				post			post	
//	-goods_num	-goods_num		-booker_info	-reservation	
//								-goods		
	
}