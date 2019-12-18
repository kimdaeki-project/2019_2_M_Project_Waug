package com.wg.p1.controller;

import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.format.datetime.joda.MillisecondInstantPrinter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.MemberVO;
import com.wg.p1.service.MemberServiceImpl;
import com.wg.p1.util.MailSender;

import oracle.net.aso.s;

@Controller
@RequestMapping(value = "member/**")
public class MemberController {
	
	@Inject
	private MemberServiceImpl memberService;
	@Inject
	private MailSender mailSender;
	
	
	@GetMapping(value = "join")
	public void memberJoin() throws Exception{
	
		
	}

	@GetMapping("facebook")
	public ModelAndView facebook(String name,String email, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO= new MemberVO();
		memberVO.setName(name);
		memberVO.setEmail(email);
		memberVO.setSocial("f");
		memberVO.setM_pk(memberVO.getSocial()+"_"+memberVO.getEmail());
		int result = memberService.socialJoin(memberVO);
		
		if(result>0) {

			session.setAttribute("memberVO", memberVO);
		}
		mv.addObject("result", result);
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
	
	@GetMapping("facebooklogin")
	public ModelAndView facebookLogin(String email, MemberVO memberVO,HttpSession session) throws Exception{
		System.out.println(email);
		memberVO.setM_pk("f_"+email);
		memberVO = memberService.memberLogin(memberVO);
		
		String msg="로그인실패";
		if(memberVO!=null) {
			msg="로그인성공";
			session.setAttribute("memberVO", memberVO);
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", msg);
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
	
	@GetMapping("kakao")
	public ModelAndView kakao(String nickname,String email, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO= new MemberVO();
		memberVO.setName(nickname);
		memberVO.setEmail(email);
		memberVO.setSocial("k");
		memberVO.setM_pk(memberVO.getSocial()+"_"+memberVO.getEmail());
		int result = memberService.socialJoin(memberVO);
		
		 if(result>0) { 
			 session.setAttribute("memberVO", memberVO); 
		 }
		 
		  mv.addObject("result", result);
		  mv.setViewName("common/common_ajaxResult");
		 
		return mv;
	}
	
	@GetMapping("kakaologin")
	public ModelAndView kakaoLogin(String email, MemberVO memberVO,HttpSession session) throws Exception{
	
		memberVO.setM_pk("k_"+email);
		memberVO = memberService.memberLogin(memberVO);
		
		String msg="로그인실패";
		if(memberVO!=null) {
			msg="로그인성공";
			session.setAttribute("memberVO", memberVO);
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", msg);
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
	

	
	
	@PostMapping(value = "join")
	public ModelAndView memberJoin(MemberVO memberVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
	
		memberVO.setSocial("w");
		memberVO.setM_pk(memberVO.getSocial()+"_"+memberVO.getEmail());
		int result = memberService.memberJoin(memberVO);
		
		String msg="가입실패";
		if(result>0) {
			msg="가입성공";
		}
		
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		memberService.memberLogin(memberVO);
		return mv;
	}
	
	
	
	
	@GetMapping(value = "login")
	public void memberLogin() throws Exception{
		
	}
	
	@PostMapping(value = "login")
	public ModelAndView memberLogin(MemberVO memberVO, HttpSession session) throws Exception {
		
		memberVO.setM_pk("w_"+memberVO.getEmail());
		memberVO = memberService.memberLogin(memberVO);
		
		String msg="로그인실패";
		if(memberVO!=null) {
			msg="로그인성공";
			session.setAttribute("memberVO", memberVO);
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("memberVO", memberVO);
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
				
		return mv;
	}
	
	@RequestMapping(value = "logout")
	public String memberLogout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:../";
	}
	
	@PostMapping("memberUpdate")
	public ModelAndView memberUpdate(MemberVO memberVO, HttpSession session) throws Exception{
		
		int result = memberService.memberUpdate(memberVO);
		
		ModelAndView mv = new ModelAndView();
		
		String msg="수정실패";
		if(result>0) {
			msg="수정성공";
			session.setAttribute("memberVO", memberVO);
		}
		mv.addObject("msg", msg);		
		mv.addObject("path", "../my/mypage");
		mv.setViewName("common/common_result");
		
		return mv;
		
	}
	
	@GetMapping(value = "memberDelete")
	public ModelAndView memberDelete(MemberVO memberVO) throws Exception{
		int result= memberService.memberDelete(memberVO);
		ModelAndView mv = new ModelAndView();
		
		String msg="탈퇴실패";
		if(result>0) {
			msg="탈퇴성공";
			
		}
		mv.addObject("msg", msg);		
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		
		return mv;
		
	}
	
	@RequestMapping("findpassword")
	public ModelAndView findpassword(HttpServletRequest request, ModelMap mo, HttpSession session,MemberVO memberVO,ModelAndView mv) throws Exception{
		memberVO.setM_pk("w_"+memberVO.getEmail());
		memberVO = memberService.memberFind(memberVO);
		
		String msg = "존재하지 않는 회원입니다";
		if(memberVO != null) {
			String email = memberVO.getEmail();
			String uuid = memberVO.getUuid();
			mailSender.mailpassword(request, mo, session, email, uuid);
			msg = "메일을 전송하였습니다.";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../member/login");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	@GetMapping("password")
	public ModelAndView password(MemberVO memberVO) throws Exception{
		memberVO = memberService.memberFind2(memberVO);
		ModelAndView mv = new ModelAndView();
		if(memberVO != null) {
			mv.addObject("member", memberVO);
			mv.setViewName("member/password");
		}else {
			mv.addObject("msg", "이미 비밀번호를 변경하셨습니다. 재설정을 원하시면 다시 재설정 이메일을 받으세요.");
			mv.addObject("path", "../member/login");
			mv.setViewName("common/common_result");
		}
			return mv;
	}
	
	@PostMapping("password")
	public ModelAndView password(MemberVO memberVO, ModelAndView mv) throws Exception{
		int result = memberService.passwordUpdate(memberVO);
		
		String msg = "변경 실패";
		if(result>0) {
			msg="변경 성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../member/login");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	

	
}
