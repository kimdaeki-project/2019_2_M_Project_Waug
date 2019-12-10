package com.wg.p1.controller;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wg.p1.service.GoodsService;

@Controller
@RequestMapping("/goods/**")
public class GoodsController {

	@Inject
	private GoodsService goodsService;

	

	@RequestMapping("goods_themes")
	public void themes() throws Exception{
		
		
	}
}
