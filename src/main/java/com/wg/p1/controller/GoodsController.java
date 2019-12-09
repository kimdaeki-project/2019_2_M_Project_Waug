package com.wg.p1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/goods/**")
public class GoodsController {

	@RequestMapping("goods")
	public void goods()throws Exception{
		System.out.println("goods page~~~");
	}
	
	@RequestMapping("goods_themes")
	public void themes() throws Exception{
		
		
	}
}
