package com.wg.p1.controller;


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
	

	
	@GetMapping("city_add")
	public ModelAndView city_add(String continents, ModelAndView mv) throws Exception{
		
		List<NationVO> ar =  adminService.city_list();
		mv.addObject("list", ar);
		mv.setViewName("admin/city_add");
		return mv;
	}
	
	@PostMapping("city_add")
	public ModelAndView city_add(NationVO nationVO, ModelAndView mv) throws Exception{
		
		String msg = "";
		
		int result = adminService.city_add(nationVO);
		if(result>0) {
			System.out.println("성공");
			msg="도시가 추가되었습니다";
		}	
	
		
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/city_add");
		mv.setViewName("/common/common_result");
		return mv;
	}
	
	@GetMapping("check_city")
	public ModelAndView check_city(ModelAndView mv, NationVO nationVO) throws Exception{

		nationVO = adminService.check_city(nationVO);
		
		int result=1;
		if(nationVO == null) {
			result=0;
		}
		mv.addObject("nationVO", nationVO);
		mv.addObject("result", result);
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
	@GetMapping("city_add2")
	public ModelAndView city_add2(String continents, ModelAndView mv) throws Exception{
		
		
		if(continents.equals("동아시아")) {
			 String[] nation = {"대한민국","일본","홍콩","마카오","대만" ,"중국","몽골"};
			 mv.addObject("nation", nation);
		}else if(continents.equals("동남아시아")) { 
			 String[] nation = {"태국","싱가포르","필리핀","라오스","말레이시아","베트남","인도네시아","캄보디아"};
			 mv.addObject("nation", nation);
		}else if(continents.equals("서남아시아")){
			 String[] nation = {"아랍에미리트","오만","인도"};
			 mv.addObject("nation", nation);
		}else if(continents.equals("유럽")) {
			 String[] nation = {"프랑스","이탈리아","터키","스페인","영국","네덜란드","독일","포르투갈","체코","스위스","오스트리아","헝가리","벨기에","핀란드","그리스","아일랜드","폴란드","아이슬란드","러시아","크로아티아","노르웨이","덴마크"};
			 mv.addObject("nation", nation);
		}else if(continents.equals("아메리카")) {
			String[] nation = {"미국","캐나다","멕시코","하와이","괌 사이판","쿠바"};
			 mv.addObject("nation", nation);
		}else if(continents.equals("오세아니아")) {
			String[] nation = {"호주","뉴질랜드","팔라우"};
			 mv.addObject("nation", nation);
		}else if(continents.equals("아프리카"))  {
			String[] nation = {"남아프리카공화국"};
			 mv.addObject("nation", nation);
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
	
	
	
	
	
	
}
