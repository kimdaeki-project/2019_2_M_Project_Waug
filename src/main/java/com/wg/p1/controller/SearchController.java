package com.wg.p1.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.service.GoodsService;

@Controller
@RequestMapping("search/**")
public class SearchController {

	@Inject
	private GoodsService goodsService;
	
	
	//혜현 빠른검색
	@GetMapping("quickSearch")
	public ModelAndView quickSearch(ModelAndView mv) throws Exception{
		List<GoodsVO> quickGoods_usim= goodsService.quickSearch_usim();
		mv.addObject("quickGoods_usim",quickGoods_usim);

		List<GoodsVO> quickGoods_airport = goodsService.quickSearch_airport();
		mv.addObject("quickGoods_airport", quickGoods_airport);
		
		List<GoodsVO> quickGoods_jr = goodsService.quickSearch_jr();
		mv.addObject("quickGoods_jr", quickGoods_jr);
		
		List<GoodsVO> quickGoods_eurail = goodsService.quickSearch_eurail();
		mv.addObject("quickGoods_eurail", quickGoods_eurail);
		
		mv.setViewName("search/quickSearch");
		return mv;
	}
	
	
}
