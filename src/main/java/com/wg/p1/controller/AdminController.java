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
	
	@GetMapping("add_goods")
	public void add_goods() throws Exception{
		
	}
	
	
}
