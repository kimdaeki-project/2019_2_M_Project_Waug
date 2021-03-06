package com.wg.p1.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;


public class ExController {
	
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public ModelAndView getClient() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("error");
		return mv;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView getEx() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("error");
		return mv;
	}
}
