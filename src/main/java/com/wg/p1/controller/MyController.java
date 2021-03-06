package com.wg.p1.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.CartVO;
import com.wg.p1.model.CouponVO;
import com.wg.p1.model.OptionVO;
import com.wg.p1.model.ReservationVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.MyCouponVO;
import com.wg.p1.model.WishListVO;
import com.wg.p1.service.CartService;
import com.wg.p1.service.CouponService;
import com.wg.p1.service.MemberServiceImpl;
import com.wg.p1.service.OptionService;
import com.wg.p1.service.OrderService;
import com.wg.p1.service.ReservationService;
import com.wg.p1.service.WishListService;

import oracle.net.aso.e;
import oracle.net.aso.s;

@Controller
@RequestMapping(value = "/my/**")
public class MyController {

	@Inject
	private MemberServiceImpl memberService;
	@Inject
	private WishListService wishlistService;
	@Inject
	private CartService cartService;
	@Inject
	private CouponService couponService;
	@Inject
	private OptionService optionService;
	@Inject
	private ReservationService reservationService;
	
	@RequestMapping(value = "mypage")
	public void my(HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");

	}
	
	@PostMapping(value = "mypage")
	public void my() {
		
	}
	

	
	
	
	@GetMapping("couponAdd")
	public ModelAndView myCouponAdd(String c_code, HttpSession session, ModelAndView mv) throws Exception{
		MemberVO memberVO =(MemberVO)session.getAttribute("memberVO");
		String msg="로그인이 필요합니다.";
		if(memberVO==null) {
			
			mv.addObject("path", "../member/login");
		}else {
			MyCouponVO myCouponVO = new MyCouponVO();
			myCouponVO.setC_code(c_code);
			myCouponVO.setM_pk(memberVO.getM_pk());
			
			String m_pk= memberVO.getM_pk();
		
			List<CouponVO> ar = couponService.myCoupon(memberVO);
		
			mv.addObject("path", "../my/coupon");
			int result = 0;
			int count = couponService.couponCount(m_pk, c_code);
			 msg="이미 발급받은 쿠폰입니다.";
			
				if(count ==0) {
					 result = couponService.myCouponAdd(myCouponVO);
					if(result>0) {	
						
						msg="쿠폰이 발급되었습니다!";
					}
				}else {
					mv.addObject("path","../");
				}
				mv.addObject("list", ar);
		}
	
		mv.addObject("msg",msg);
	
		mv.setViewName("common/common_result");
		return mv;
	}
	@GetMapping("coupon")
	public ModelAndView coupon(HttpSession session, ModelAndView mv, MyCouponVO myCouponVO) throws Exception{
		MemberVO memberVO =(MemberVO)session.getAttribute("memberVO");
		
		int c_count_before = couponService.myCouponBeforeCount(memberVO);
		int c_count_after = couponService.myCouponAfterCount(memberVO);
		List<CouponVO> ar = couponService.myCoupon(memberVO);
		List<CouponVO> ar2 = couponService.myCouponAfter(memberVO);

		mv.addObject("list", ar);
		mv.addObject("listAfter", ar2);
		mv.addObject("c_count_before", c_count_before);
		mv.addObject("c_count_after", c_count_after);
		mv.setViewName("my/coupon");
		return mv;
	}

	@GetMapping("couponUse")
	public void couponUse(String c_code) throws Exception{
		System.out.println("couponUse  :"  +c_code);
	}
	
	//장바구니 리스트
	@GetMapping("cart")
	public ModelAndView cart(GoodsVO goodsVO, HttpSession session , CartVO cartVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		List<GoodsVO> ar = cartService.myCart(memberVO);
		
		int cartCount = cartService.cartCount(memberVO);

		
		mv.addObject("cartCount", cartCount);
		int cartTotal = cartService.cartTotal(memberVO);
		mv.addObject("list", ar);
		mv.addObject("cartVO", cartVO);
		mv.addObject("cartTotal",cartTotal);
		System.out.println(cartTotal);
		mv.setViewName("my/cart");
		return mv;
	}
	
	
	//장바구니 추가
	@PostMapping("cartadd")
	public ModelAndView cart(CartVO cartVO, HttpSession session,int goods_num, ModelAndView mv,OptionVO optionVO) throws Exception{
		MemberVO memberVO =(MemberVO)session.getAttribute("memberVO");
		
		int result = optionService.optionAdd(optionVO);
		String msg="";
		if(memberVO==null) {
			mv.addObject("path", "../member/login");
			mv.addObject("msg","로그인이 필요합니다.");
		}else {
		
		
		cartVO.setEmail(memberVO.getM_pk());
		cartVO.setGoods_num(goods_num);
		cartVO.setO_num(optionVO.getO_num());
		
		int result2 = cartService.cartAdd(cartVO);
		
			if(result>0) {
				msg="장바구니에 상품이 등록되었습니다! 장바구니로 이동합니다.";
				
			}else {
				msg="실패";
			}
		mv.addObject("msg", msg);
		mv.addObject("path", "../my/cart");
		}
		
		mv.setViewName("common/common_result");
		
		return mv;
	}
	//장바구니 삭제
	@PostMapping("cartDel")
	public ModelAndView cartDel(MemberVO memberVO, HttpSession session, int[] cart_num) throws Exception{
		ModelAndView mv = new ModelAndView();
	
		MemberVO memberVO2 = (MemberVO)session.getAttribute("memberVO");
		memberVO.setM_pk(memberVO2.getM_pk());
		
		String msg="";
		int result=0;
		
		if(cart_num==null) {
			msg="삭제 할 상품을 선택 해 주세요";
		}else {
			for (int i = 0; i < cart_num.length; i++) {
				
				result = cartService.cartDel(cart_num[i]);
			}
			if(result>0) {
				msg="삭제성공";
			}
		}
		
		
		mv.addObject("msg", msg);
		mv.addObject("path", "cart");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	
	//위시리스트 추가
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
			mv.addObject("path","../");
		
	
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
	//위시리스트 삭제
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
	//위시리스트
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
	
	@GetMapping("order")
	public void myOrder(HttpSession session,Model model) throws Exception{
		
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		List<ReservationVO> res=reservationService.selectMyOrders(memberVO);
		model.addAttribute("reservation", res);
	}
	

	
	@GetMapping("point")
	public void myPoint(HttpSession session,Model model) throws Exception{
		MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
		List<ReservationVO> res=reservationService.selectMyPoint(memberVO);
	
		int totalPoint=reservationService.selectTotalPoint(memberVO);

		model.addAttribute("reservation", res);
		model.addAttribute("totalPoint", totalPoint);
	}
}
