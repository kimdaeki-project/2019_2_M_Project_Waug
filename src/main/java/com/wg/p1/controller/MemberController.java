package com.wg.p1.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.MemberVO;
import com.wg.p1.service.MemberServiceImpl;

@Controller
@RequestMapping(value = "member/**")
public class MemberController {
	
	@Inject
	private MemberServiceImpl memberService;
	
	@GetMapping(value = "join")
	public void memberJoin() throws Exception{
		
		
	}

	@PostMapping(value = "join")
	public ModelAndView memberJoin(MemberVO memberVO) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		int result = memberService.memberJoin(memberVO);
		
		String msg="가입실패";
		if(result>0) {
			msg="가입성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	
	@GetMapping(value = "login")
	public void memberLogin() throws Exception{
		
	}
	
	@PostMapping(value = "login")
	public ModelAndView memberLogin(MemberVO memberVO, HttpSession session) throws Exception {
		
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
	
}
