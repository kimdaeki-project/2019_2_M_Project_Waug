package com.wg.p1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wg.p1.model.GoodsOptionVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.service.GoodsService;
import com.wg.p1.service.OrderService;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@Inject
	private GoodsService goodsService;
	@Inject
	private OrderService orderService;
	private GoodsVO goodsVO;
	
	@GetMapping("calendar")
	public Model calendar(int goods_num, Model model) throws Exception {
		System.out.println("test : orderController > calendar(int "+goods_num+")");
		goodsVO=goodsService.selectOneGoods(goods_num);
		List<GoodsOptionVO> goodsOptionVO=orderService.selectOptionTime();
		model.addAttribute("goods", goodsVO);
		model.addAttribute("goodsOption", goodsOptionVO);
		return model;
	}
	
	@PostMapping("info")
	public void info(GoodsOptionVO goodsOptionVO, GoodsVO goodsVO) throws Exception{
		System.out.println("goodsOptionVO.getO_time() : "+goodsOptionVO.getO_time());
		System.out.println("GoodsVO.getNumbaer : "+goodsVO.getGoods_num() );
		
	}
}