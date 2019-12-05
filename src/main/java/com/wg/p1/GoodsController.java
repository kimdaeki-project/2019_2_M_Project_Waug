package com.wg.p1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
