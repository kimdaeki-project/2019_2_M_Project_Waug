package com.wg.p1.controller;

import java.io.File;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.CategoryVO;
import com.wg.p1.model.GoodsVO;

import com.wg.p1.model.InfoVO;

import com.wg.p1.model.NationVO;
import com.wg.p1.model.ThemeVO;
import com.wg.p1.service.AdminService;
import com.wg.p1.service.GoodsService;
import com.wg.p1.service.adService;
import com.wg.p1.util.Pager;

@Controller
@RequestMapping("admin/**")
public class AdminController {
	@Inject
	private GoodsService goodsService;
	//임시로만든 inject
	@Inject
	private adService adService;
	@Inject
	private AdminService adminService;
	@RequestMapping("admin_main")
	public String admin_main() throws Exception{
		
		return "admin/admin_main";
	}
	
	@GetMapping("goods_list")
	public ModelAndView goods_list(GoodsVO goodsVO, Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<GoodsVO> ar = goodsService.GoodsList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("admin/goods_list");
		return mv;
	} 
	
	@GetMapping("goods_add")
	public ModelAndView goods_add(ModelAndView mv) throws Exception{
		
		List<CategoryVO> catear = goodsService.CateAll();
		List<NationVO> cityar = goodsService.CityAll();
		List<ThemeVO> themear = goodsService.ThemeAll();
		
		mv.addObject("catear", catear);
		mv.addObject("cityar", cityar);
		mv.addObject("themear", themear);
		
		mv.setViewName("admin/goods_add");
		return mv;
	}
	
	@PostMapping("goods_add")
	public ModelAndView goods_add(GoodsVO goodsVO, MultipartFile[] file, InfoVO infoVO,HttpSession session) throws Exception{
		int result=adminService.addGoods(goodsVO, file, infoVO, session);
		ModelAndView mv=new ModelAndView();
		String path="../admin/goods_list";
		String msg="goods 추가 성공";
		if(result>0) {
			mv.addObject("path", path);
			mv.addObject("msg", msg);
		}else {
			msg="goods 추가 실패";
			mv.addObject("path", path);
			mv.addObject("msg", msg);
		}
		mv.setViewName("common/common_result");
		return mv;
	}
	//관리자 테마리스트 페이지
	@GetMapping("theme_list")
	public ModelAndView theme_list(ModelAndView mv) throws Exception{
		List<ThemeVO> ar = goodsService.ThemeAll();
		mv.addObject("list", ar);
		mv.setViewName("admin/theme_list");
		
		return mv;
	}
	//관리자 테마추가 페이지
	@GetMapping("theme_add")
	public void theme_add() throws Exception{
		
	}
	@PostMapping("theme_add")
	public ModelAndView theme_add(ModelAndView mv, ThemeVO themeVO) throws Exception{
		
		int result = adService.addTheme(themeVO);
		String msg = "등록 실패";
		if(result >0) {
			msg="등록 성공";
			
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/theme_list");
		mv.setViewName("common/common_result");
		return mv;
	}
	
	
	
	
	
	
}
