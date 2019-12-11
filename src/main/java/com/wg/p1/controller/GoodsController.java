package com.wg.p1.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wg.p1.model.MemberVO;

@Controller
@RequestMapping("/goods/**")
public class GoodsController {

	@RequestMapping("goods")
	public void goods()throws Exception{
		
	}
	
	@RequestMapping("goods_themes")
	public void themes() throws Exception{
		
		
		
	}
}
