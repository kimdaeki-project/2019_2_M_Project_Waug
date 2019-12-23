package com.wg.p1.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.KakaoPayApprovalVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.OptionVO;
import com.wg.p1.model.ReservationVO;
import com.wg.p1.service.CouponService;
import com.wg.p1.service.GoodsService;
import com.wg.p1.service.KakaoPayService;
import com.wg.p1.service.OptionService;
import com.wg.p1.service.ReservationService;
import com.wg.p1.util.MailSender;

@Controller
@RequestMapping("kakao/**")
public class KakaoPayController {

	@Inject
	private KakaoPayService kakaoPayService;
	@Inject
	private GoodsService goodsService;
	@Inject
	private OptionService optionService;
	@Inject
	private CouponService couponService;
	
	
	@GetMapping("kakaoPay")
    public void kakaoPayGet() {
		
    }
	//pay 거는거
	@PostMapping("kakaoPay")
    public String kakaoPay(int goods_num, int o_num ,HttpSession session, String c_code) throws Exception{
      System.out.println("kakaoPay post............................................");
      GoodsVO goodsVO=goodsService.selectOneGoods(goods_num);
      OptionVO optionVO=optionService.optionSelectOne(o_num);
      MemberVO memberVO=(MemberVO)session.getAttribute("memberVO");
    //  couponService.couponUse(myCouponVO);
      
//      System.out.println("type : "+optionVO.getO_people());
//      System.out.println("goodsVO.getGoods_num() : "+goodsVO.getGoods_num());
		System.out.println("kakao controller : member : "+memberVO.getEmail());
        return "redirect:" + kakaoPayService.kakaoPayReady(goodsVO, optionVO, memberVO);
      
    }
	
	//pay 받아오기
	@GetMapping("kakaoPaySuccess")
    public Model kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model,HttpServletRequest request,ModelMap mo, HttpSession session)throws Exception {
        System.out.println("kakaoPaySuccess get............................................");
        System.out.println("kakaoPaySuccess pg_token : " + pg_token);
       // MemberVO memberVO=(MemberVO)session.getServletContext().getAttribute("MemberVO");
        KakaoPayApprovalVO kakaoPayApprovalVO=kakaoPayService.kakaoPayInfo(pg_token);
        //여기서 dao 디비에 저장
        //reservationService.addReservation(reservationVO);
        model.addAttribute("info",kakaoPayApprovalVO );
        MailSender mailSender=new MailSender();
        mailSender.mailSender(request, mo, session, kakaoPayApprovalVO.getPartner_user_id(), kakaoPayApprovalVO.getItem_name(), "goods option", "ims330k@naver.com");
        return model;
    }
}
