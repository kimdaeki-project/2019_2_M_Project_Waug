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

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.MyCouponVO;
import com.wg.p1.model.ReviewImgVO;
import com.wg.p1.model.ReviewVO;
import com.wg.p1.service.CouponService;
import com.wg.p1.service.GoodsService;
import com.wg.p1.service.ReviewService;
import com.wg.p1.util.Pager;


@Controller
@RequestMapping("/reviews/**")
public class ReviewController {
	@Inject
	private ReviewService reviewService;
	@Inject
	private CouponService couponService;
	@Inject
	private GoodsService goodsService;
	
	
	@RequestMapping("review_list")
	public ModelAndView review(Pager pager, ModelAndView mv) throws Exception{
		System.out.println("페이져"+pager.getGoods_num());
		List<ReviewVO> ar = reviewService.reviewList(pager);
		GoodsVO goodsVO = goodsService.selectOneGoods(Integer.parseInt(pager.getGoods_num()));
		
		mv.addObject("list", ar);
		mv.addObject("goodsVO", goodsVO);
		mv.addObject("totalPage", pager.getTotalPage());
		mv.setViewName("reviews/review_list");
		return mv;
		
	}
	@RequestMapping("review_lists")
	public ModelAndView reviews(Pager pager, ModelAndView mv, HttpSession session) throws Exception{
		List<ReviewVO> ar = reviewService.reviewList(pager);
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		mv.addObject("list", ar);
		//mv.addObject("memberVO",memberVO);
		mv.setViewName("common/reviewAjax");
		return mv;
	}
	
	@PostMapping("review_write")
	public ModelAndView review_Write(ReviewVO reviewVO, String[] rv_images, HttpSession session) throws Exception{
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		ModelAndView mv = new ModelAndView();
		
		
		MyCouponVO myCouponVO = new MyCouponVO();
		myCouponVO.setC_code("M4UDTQK3OI");
		myCouponVO.setM_pk(memberVO.getM_pk());
		int result2 = couponService.myCouponAdd(myCouponVO);
		int result = reviewService.reviewWrite(reviewVO,rv_images);
		String msg="";
		if(result2>0) {
			msg="이용후기 쿠폰이 발급 되었습니다!";
		}
		
		mv.addObject("msg", msg);
		mv.addObject("path", "../reviews/review_list?goods_num="+reviewVO.getGoods_num());
		mv.setViewName("common/common_result");
		//mv.setViewName("reviews/review_list");

		return mv;
		
	}
	@GetMapping("review_delete")
	public ModelAndView reviewDelete(ReviewVO reviewVO) throws Exception{
		int result = reviewService.reviewDelete(reviewVO);
		ModelAndView mv = new ModelAndView();
		
		String msg = "리뷰 삭제에 실패하였습니다";
		if(result >0) {
			msg = "리뷰를 삭제했습니다";
		}
		mv.addObject("result", msg);
		mv.setViewName("common/common_ajaxResult");
		return mv;
	}
	
	@GetMapping("reviewSelect")
	public ModelAndView reviewSelect(ReviewVO reviewVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		reviewVO = reviewService.reviewSelect(reviewVO);
		reviewVO.setRv_contents(reviewVO.getRv_contents().replace("</br>", "\r\n"));
		mv.addObject("select", reviewVO);
		mv.setViewName("common/reviewselectAjax");
		
		return mv;
		
	}
	@PostMapping("review_update")
	public String reviewUpdate(ReviewVO reviewVO,String[] rv_images) throws Exception{
		
		
		reviewVO.setRv_contents(reviewVO.getRv_contents().replace("\r\n", "</br>"));
		int result = reviewService.reviewUpdate(reviewVO, rv_images);
		
		return "redirect:review_list?goods_num="+reviewVO.getGoods_num();
	}
	@PostMapping("review_reply")
	public String reviewReply(ReviewVO reviewVO) throws Exception{
		reviewVO.setRv_acontents(reviewVO.getRv_acontents().replace("\r\n", "</br>"));
		int result = reviewService.reviewReply(reviewVO);
		
		return "redirect:review_list?goods_num="+reviewVO.getGoods_num();
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
	@GetMapping("reviewImageDelete")
	public ModelAndView reviewImageDelete(ReviewImgVO reviewImgVO, ModelAndView mv) throws Exception{
		System.out.println(reviewImgVO.getRv_img_num());
		int result = reviewService.review_imgDelete(reviewImgVO);
		mv.setViewName("common/common_ajaxResult");
		return mv;
	}
	
}
