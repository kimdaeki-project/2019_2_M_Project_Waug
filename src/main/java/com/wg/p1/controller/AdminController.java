package com.wg.p1.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

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
	
	@GetMapping("city_add")
	public void city_add(String continents, Model model) throws Exception{
		
		
	}
	
	@PostMapping("city_add")
	public void city_add(NationVO nationVO) throws Exception{
		
		int result = adminService.city_add(nationVO);
		if(result>0) {
			System.out.println("성공");
	
		}
	}
	
	@GetMapping("city_add2")
	public ModelAndView city_add2(String continents, ModelAndView mv) throws Exception{
		
		 System.out.println(continents);
		 
		if(continents.equals("동아시아")) {
			 String[] nation = {"대한민국","일본","홍콩","마카오","대만" ,"중국","몽골"};
			 mv.addObject("nations", nation);
		}else if(continents.equals("southeast_asia")) { 
			 String[] nation = {"태국","싱가포르","필리핀","라오스","말레이시아","베트남","인도네시아","캄보디아"};
			 mv.addObject("nations", nation);
		}else if(continents.equals("southwest_asia")){
			 String[] nation = {"아랍에미리트","오만","인도"};
			 mv.addObject("nations", nation);
		}else if(continents.equals("europe")) {
			 String[] nation = {"프랑스","이탈리아","터키","스페인","영국","네덜란드","독일","포르투갈","체코","스위스","오스트리아","헝가리","벨기에","핀란드","그리스","아일랜드","폴란드","아이슬란드","러시아","크로아티아","노르웨이","덴마크"};
			 mv.addObject("nations", nation);
		}else if(continents.equals("america")) {
			String[] nation = {"미국","캐나다","멕시코","하와이","괌 사이판","쿠바"};
			 mv.addObject("nations", nation);
		}else if(continents.equals("oceania")) {
			String[] nation = {"호주","뉴질랜드","팔라우"};
			 mv.addObject("nations", nation);
		}else if(continents.equals("africa"))  {
			String[] nation = {"남아프리카공화국"};
			 mv.addObject("nations", nation);
		}
		mv.setViewName("common/cityaddAjax");
		return mv;
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
	public void goods_add(GoodsVO goodsVO, MultipartFile[] file, InfoVO infoVO) throws Exception{
		
		System.out.println(goodsVO.getCity_num());
		System.out.println(goodsVO.getCate_num());
		System.out.println(goodsVO.getT_num());
		
//		**************** for test ****************
		System.out.println("goods_add_result !!!!");
		System.out.println("infoVO : "+infoVO.getBoucher());
		
		System.out.println(file.length);
		for(int i=0;i<file.length;i++) {
			System.out.println(i+"번째 파일");
			System.out.println(file[i].getName());
			System.out.println(file[i].getOriginalFilename());
		}
		
		System.out.println("-----------goodsVO---------");
		System.out.println("goodsVO.getProgram() : "+goodsVO.getProgram());
	}
	
	
	
	
	
	
}
