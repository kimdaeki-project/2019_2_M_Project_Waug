package com.wg.p1.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.WishListVO;
import com.wg.p1.service.MemberServiceImpl;
import com.wg.p1.service.WishListService;

@Controller
@RequestMapping(value = "/my/**")
public class MyController {

	@Inject
	private MemberServiceImpl memberService;
	@Inject
	private WishListService wishlistService;
	
	@RequestMapping(value = "mypage")
	public void my(HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");

	
	}
	
	@PostMapping(value = "mypage")
	public void my() {
		
	}
	
	@GetMapping("wishAdd")
	public ModelAndView wishlist(WishListVO wishListVO, int goods_num, HttpSession session, GoodsVO goodsVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		
		wishListVO.setGoods_num(goods_num);
		wishListVO.setEmail(memberVO.getM_pk());
		
		
		int result = wishlistService.wishAdd(wishListVO);
		
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
		List<GoodsVO> ar = wishlistService.myWish(goodsVO);
		MemberVO memberVO =(MemberVO)session.getAttribute("memberVO");
		
		System.out.println(ar.size());
		mv.addObject("memberVO", memberVO);
		mv.addObject("list", ar);
		mv.setViewName("my/wishlist");
		System.out.println("fd");
		return mv;
	}
}
