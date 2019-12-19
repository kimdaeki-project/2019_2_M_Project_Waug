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
import com.wg.p1.service.OptionService;
import com.wg.p1.service.OrderService;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@Inject
	private GoodsService goodsService;
	@Inject
	private OrderService orderService;
	@Inject
	private OptionService optionService;
	
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
	public ModelAndView info(OptionVO optionVO, int goods_num, HttpSession session) throws Exception{
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
		int option_result=optionService.optionAdd(optionVO);
		System.out.println("orderController : info : optionAdd result : "+option_result);
		OptionVO option=optionService.optionSelectOne(optionVO.getO_num());	//option 가져오기
		System.out.println("orderController : date show : "+option.getO_date());
		System.out.println(optionVO.getO_num());
			mv.setViewName("./order/info");
			mv.addObject("goods", goodsVO);
			mv.addObject("member", memberVO);
			mv.addObject("option", option);//이거 위에서 optionVO를 DB에 저장
		//	mv.addObject("goodsOption", goodsOptionVO);
			return mv;
	}
//삭제???
//	public Model info(OptionVO optionVO, GoodsVO goodsVO, int people, Model model) throws Exception{
//		System.out.println("goodsOptionVO.getO_time() : "+optionVO.getO_time());
//		System.out.println("GoodsVO.getNumbaer : "+goodsVO.getGoods_num() );
//		System.out.println("people : "+ people);
//		model.addAttribute("people", people);
//		return model;
//	}
	
	@PostMapping("order1")
	public ModelAndView order(OptionVO optionVO,int goods_num, ModelAndView mv,String[] firstName,String[] lastName, String[] passport, int[] b_gender,String sns,String b_visit, String b_email)throws Exception{
		GoodsVO goodsVO=goodsService.selectOneGoods(goods_num);
		System.out.println("orderController  :");
		System.out.println(b_gender);
		for(int i=0;i<b_gender.length;i++) {
			System.out.println("b_gender[i] : "+b_gender[i]);
		}
		int ref=orderService.insertBookerInfo(Integer.parseInt(optionVO.getO_people()) ,firstName, lastName, passport, b_gender, sns, b_visit, b_email);
		List<BookerInfoVO> bookerInfo=orderService.selectBookerInfo(ref);
		System.out.println("order1Controller : date >>>"+optionVO.getO_date());
		mv.addObject("option", optionVO);
		mv.addObject("goods", goodsVO);
		mv.addObject("bookerInfo", bookerInfo);
		mv.setViewName("order/order");
		
		return mv;
	}
	
}