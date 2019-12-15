package com.wg.p1.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.wg.p1.util.Pager;

@Controller
@RequestMapping("admin/**")
public class AdminController {
	@Inject
	private GoodsService goodsService;
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
	
	@PostMapping("goods_delete")
	public ModelAndView goods_delete(int[] goods_num)throws Exception{
		boolean deleteCheck=true;
		ModelAndView mv=new ModelAndView();
		for (int i = 0; i < goods_num.length; i++) {
			GoodsVO goodsVO=new GoodsVO();
			goodsVO.setGoods_num(goods_num[i]);
			int temp=adminService.goodsDelete(goodsVO);
			if(temp<1) {
				System.out.println("delete fail : "+goods_num[i]);
				deleteCheck=false;
			}
		}
		String msg="delete success";
		String path="./goods_list";
		if(deleteCheck) {
			//success
			mv.addObject("msg", msg);
			mv.addObject("path", path);
		}
		else {
			//fail
			msg="delete fail";
			mv.addObject("msg", msg);
			mv.addObject("path", path);
		}
		mv.setViewName("common/common_result");
		return mv;
	}
	
	@GetMapping("goods_update")
	public Model goods_update(GoodsVO goodsVO, Model model)throws Exception{
		//category, nation, theme LIST
		List<CategoryVO> catear = goodsService.CateAll();
		List<NationVO> cityar = goodsService.CityAll();
		List<ThemeVO> themear = goodsService.ThemeAll();
		
		ArrayList<Object> goods=adminService.goods_update(goodsVO);
		InfoVO info=(InfoVO)goods.get(0);
		GoodsVO goodsVO2=(GoodsVO)goods.get(1);
		model.addAttribute("info", info);
		model.addAttribute("goodsVO2", goodsVO2);
		model.addAttribute("cityar", cityar);
		model.addAttribute("themear", themear);
		model.addAttribute("catear", catear);
		
		return model;
	}
	
	
}
