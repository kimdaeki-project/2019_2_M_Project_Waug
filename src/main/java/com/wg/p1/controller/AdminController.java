package com.wg.p1.controller;

import java.io.File;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.service.GoodsService;

@Controller
@RequestMapping("admin/**")
public class AdminController {
	@Inject
	private GoodsService goodsService;
	
	
	@RequestMapping("admin_main")
	public String admin_main() throws Exception{
		
		return "admin/admin_main";
	}
	
	@GetMapping("goods_list")
	public ModelAndView goods_list(GoodsVO goodsVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		List<GoodsVO> ar = goodsService.GoodsList();
		mv.addObject("list", ar);
		
		mv.setViewName("admin/goods_list");
		return mv;
	} 
	
	@GetMapping("goods_add")
	public void goods_add() throws Exception{
		
		
	}
	
	@RequestMapping("goods_add_test")
	public void goods_add_test() throws Exception{
		
	}
	
	@PostMapping("goods_add_result")
	public void goods_add_result(GoodsVO goodsVO, MultipartFile[] file, InfoVO infoVO) throws Exception{
//		System.out.println("goods_add_result !!!!");
//		System.out.println("infoVO : "+infoVO.getBoucher());
//		
//		System.out.println(file.length);
//		for(int i=0;i<file.length;i++) {
//			System.out.println(i+"번째 파일");
//			System.out.println(file[i].getName());
//			System.out.println(file[i].getOriginalFilename());
//		}
//		
//		System.out.println("-----------goodsVO---------");
//		System.out.println("goodsVO.getProgram() : "+goodsVO.getProgram());
	}
	
	
	
	
}
