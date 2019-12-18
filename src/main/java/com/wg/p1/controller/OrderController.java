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
	private List<BookerInfoVO> booker;
	@GetMapping("calendar")
	public Model calendar(int goods_num, Model model) throws Exception {
		goodsVO=goodsService.selectOneGoods(goods_num);
		List<GoodsOptionVO> goodsOptionVO=orderService.selectOptionTime();
		model.addAttribute("goods", goodsVO);
		model.addAttribute("goodsOption", goodsOptionVO);
		return model;
	}
	
	@PostMapping("info")
	public ModelAndView info(GoodsOptionVO goodsOptionVO, int goods_num, int people, HttpSession session) throws Exception{
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
			mv.addObject("goodsOption", goodsOptionVO);
			return mv;
//		}
	}
	
	@PostMapping("order1")
	public ModelAndView order(int people,int goods_num, ModelAndView mv,String[] firstName,String[] lastName, String[] passport, int[] b_gender,String sns,String b_visit, String b_email)throws Exception{
		GoodsVO goodsVO=goodsService.selectOneGoods(goods_num);
		System.out.println("orderController  :");
		System.out.println(b_gender);
		for(int i=0;i<b_gender.length;i++) {
			System.out.println("b_gender[i] : "+b_gender[i]);
		}
		int ref=orderService.insertBookerInfo(people,firstName, lastName, passport, b_gender, sns, b_visit, b_email);
		List<BookerInfoVO> bookerInfo=orderService.selectBookerInfo(ref);
		mv.addObject("goods", goodsVO);
		mv.addObject("bookerInfo", bookerInfo);
		mv.setViewName("order/order");
		
		return mv;
	}
	
}