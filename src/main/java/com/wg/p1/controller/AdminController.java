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
import com.wg.p1.model.ReviewVO;
import com.wg.p1.model.ThemeVO;
import com.wg.p1.service.AdminService;
import com.wg.p1.service.GoodsService;
import com.wg.p1.service.ReviewService;
import com.wg.p1.service.adService;
import com.wg.p1.util.Pager;

@Controller
@RequestMapping("admin/**")
public class AdminController {
	@Inject
	private GoodsService goodsService;
	@Inject
	private AdminService adminService;
	@Inject
	private ReviewService reviewService;
	
	@RequestMapping("admin_main")
	public ModelAndView admin_main(ModelAndView mv) throws Exception{
		int count = adminService.count_review_new();
		
		
		mv.addObject("count", count);
		mv.setViewName("admin/admin_main");
		return mv;
	}
	

	//도시추가
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
	public ModelAndView goods_add(GoodsVO goodsVO, InfoVO infoVO,HttpSession session) throws Exception{
		int result=adminService.addGoods(goodsVO, infoVO, session);
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
		
		int result = adminService.addTheme(themeVO);
		String msg = "등록 실패";
		if(result >0) {
			msg="등록 성공";
			
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/theme_list");
		mv.setViewName("common/common_result");
		return mv;
	}
	//테마수정페이지
	@GetMapping("theme_update")
	public ModelAndView theme_update(ThemeVO themeVO,ModelAndView mv) throws Exception{
		themeVO = adminService.selectTheme(themeVO);
		
		mv.addObject("dto", themeVO);
		mv.setViewName("admin/theme_update");
		return mv;
	}
	
	@PostMapping("theme_update")
	public ModelAndView theme_updates(ThemeVO themeVO,ModelAndView mv) throws Exception{
		int result = adminService.theme_update(themeVO);
		
		String msg = "수정 실패";
		if(result > 0) {
			msg = "수정 성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/theme_list");
		mv.setViewName("common/common_result");
		
		return mv;
	}
	@RequestMapping("theme_delete")
	public ModelAndView theme_delete(int[] t_num,ModelAndView mv) throws Exception{
			int result = 0;
		for (int j = 0; j < t_num.length; j++) {
			ThemeVO themeVO = new ThemeVO();
			themeVO.setT_num(t_num[j]);
			result = adminService.theme_delete(themeVO);
		}
		
		String msg = "삭제 실패";
		if(result>0) {
			msg="삭제 성공";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../admin/theme_list");
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
	
	@PostMapping("goods_update")
	public ModelAndView goods_update(GoodsVO goodsVO, InfoVO infoVO,HttpSession session)throws Exception{
		System.out.println("**************************************controller test");
		System.out.println("adminController.goods_num : "+goodsVO.getGoods_num());
		System.out.println("goodsVO.getImg() : "+goodsVO.getImg());
		System.out.println("goodsVO.getCity_name() : "+goodsVO.getCity_name());
		System.out.println("goodsVO.getCity_num() : "+goodsVO.getCity_num());
		//goods update
		int goods=adminService.goodsUpdate_goods(goodsVO, session);
		System.out.println("goods update result : "+goods);
		//info update
		int info=adminService.goodsUpdate_info(infoVO);
		System.out.println("info update result : "+info);
		ModelAndView mv=new ModelAndView();
		String path="./goods_list";
		String msg="수정 성공";
		if(info+goods<2) {
			//fail
			msg="수정 실패"	;
		}
		mv.addObject("msg", msg);
		mv.addObject("path", path);
		mv.setViewName("common/common_result");
		return mv;
	}
	
	@RequestMapping("review_list")
	public ModelAndView review_list(ModelAndView mv, Pager pager) throws Exception{
		List<ReviewVO> ar = adminService.review_list(pager);
		mv.addObject("list", ar);
		mv.setViewName("admin/review_list");
		mv.addObject("totalPage", pager.getTotalPage());
		return mv;
	}
	@RequestMapping("review_lists")
	public ModelAndView review_lists(ModelAndView mv, Pager pager) throws Exception{
		
		List<ReviewVO> ar = adminService.review_list(pager);
		mv.addObject("list", ar);
		mv.setViewName("common/reviewAjax2");
		
		
		return mv;
	}
	@RequestMapping("review_delete")
	public ModelAndView review_delete(ModelAndView mv, ReviewVO reviewVO) throws Exception{
		int result = reviewService.reviewDelete(reviewVO);
		
		String msg = "리뷰 삭제에 실패하였습니다";
		if(result >0) {
			msg = "리뷰를 삭제했습니다";
		}
		mv.addObject("result", msg);
		mv.setViewName("common/common_ajaxResult");
		
		return mv;
	}
	
}
