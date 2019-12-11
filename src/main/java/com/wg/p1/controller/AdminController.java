package com.wg.p1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/**")
public class AdminController {
	
	@RequestMapping("admin_main")
	public String admin_main() throws Exception{
		
		return "admin/admin_main";
	}
	
	@GetMapping("goods_list")
	public void goods_list() throws Exception{
		
	} 
	
	@GetMapping("goods_add")
	public void goods_add() throws Exception{
		
	}
	
	
}
