package com.wg.p1.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.service.GoodsService;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@Inject
	private GoodsService goodsService;
	private GoodsVO goodsVO;
	
	@GetMapping("calendar")
	public Model calendar(int goods_num, Model model) throws Exception {
		System.out.println("test : orderController > calendar(int "+goods_num+")");
		goodsVO=goodsService.selectOneGoods(goods_num);
		model.addAttribute("goods", goodsVO);
		return model;
	}
	
	@GetMapping("info")
	public void info() {
	}
}
