package com.wg.p1.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.CartVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.WishListVO;
import com.wg.p1.service.CartService;
import com.wg.p1.service.MemberServiceImpl;
import com.wg.p1.service.WishListService;

import oracle.net.aso.e;

@Controller
@RequestMapping(value = "/my/**")
public class MyController {

	@Inject
	private MemberServiceImpl memberService;
	@Inject
	private WishListService wishlistService;
	@Inject
	private CartService cartService;
	
	@RequestMapping(value = "mypage")
	public void my(HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");

	}
	
	@PostMapping(value = "mypage")
	public void my() {
		
	}
	
	
	@GetMapping("cart")
	public void cart(CartVO cartVO) throws Exception{
		int result = cartService.cartAdd(cartVO);
		if(result>0) {
			
		}
	}
	
	
	@GetMapping("wishAdd")
	public ModelAndView wishlist(WishListVO wishListVO, int goods_num, HttpSession session, GoodsVO goodsVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		
		String email= memberVO.getM_pk();
		
		wishListVO.setEmail(email);
		wishListVO.setGoods_num(goods_num);
		
		int result=0;
		int count = wishlistService.wishCount(goods_num,email);
		
		String msg="위시리스트 등록 성공";
		if(count==0) {
			result = wishlistService.wishAdd(wishListVO);

		}else {
			msg="이미 등록된 위시리스트입니다.";
		}
		
		if(result>0) { 
			System.out.println("성공"); 
		}else { 
			System.out.println("실패"); 
		}

		mv.addObject("msg", msg);
		mv.addObject("result", result); 
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
	@GetMapping("wishDel")
	public ModelAndView wishDelete(MemberVO memberVO, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO2 = (MemberVO)session.getAttribute("memberVO");
		memberVO.setM_pk(memberVO2.getM_pk());
		
		int result = wishlistService.wishDel(memberVO);
		
		if(result>0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
	@GetMapping("wishlist")
	public ModelAndView myWish(GoodsVO goodsVO, HttpSession session, WishListVO wishListVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		goodsVO.setGoods_num(wishListVO.getGoods_num());
		MemberVO memberVO =(MemberVO)session.getAttribute("memberVO");
		List<GoodsVO> ar = wishlistService.myWish(memberVO);
		
		mv.addObject("memberVO", memberVO);
		mv.addObject("list", ar);
		mv.setViewName("my/wishlist");
		return mv;
	}
}
