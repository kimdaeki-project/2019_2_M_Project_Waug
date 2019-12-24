package com.wg.p1.service;

import java.util.ArrayList;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.util.CouponMaker;
import com.wg.p1.util.FileSaver;
import com.wg.p1.util.Pager;

import java.util.List;
import com.wg.p1.dao.AdminDAO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.ReviewVO;
import com.wg.p1.model.ThemeVO;

@Service
public class AdminService {

	@Inject
	private GoodsDAO goodsDAO;
	@Inject
	private FileSaver fileSaver;
	@Inject
	private AdminDAO adminDAO;

	public int goodsUpdate_info(InfoVO infoVO)throws Exception{
		int infoVO_update=goodsDAO.infoUpdate(infoVO);
		return infoVO_update;
	}
	
	public int goodsUpdate_goods(GoodsVO goodsVO, HttpSession session)throws Exception{
	//대표이미지 저장하기
		
		/*
		//파일 저장하기(sub 이미지 저장)
		String realPath=session.getServletContext().getRealPath("resources/images/goods");
		String fileName="";
		for(int i=0;i<file.length;i++) {
			fileName=fileSaver.save(realPath, file[i]);			
			switch (i) {
			case 0: 
				goodsVO.setImg1(fileName);
				break;
			case 1:
				goodsVO.setImg2(fileName);
				break;
			case 2:
				goodsVO.setImg3(fileName);
				break;
			case 3:
				goodsVO.setImg4(fileName);
			}
		}
		*/
		System.out.println("adminService : test-------------------------------");
			
			
		int goodsVO_update=goodsDAO.goodsUpdate(goodsVO);
		//기존에 저장했던 파일 삭제기능 추가
		return goodsVO_update;
	}
	
	public int addGoods(GoodsVO goodsVO, InfoVO infoVO, HttpSession session)throws Exception{
		CouponMaker couponMaker=new CouponMaker();
		/*
		//대표이미지 저장하기
		System.out.println("City num : "+goodsVO.getCity_num());
		System.out.println("City name : "+goodsVO.getCity_name());
		//파일 저장하기(sub 이미지 저장)
		String realPath=session.getServletContext().getRealPath("resources/images/goods");
		String fileName="";
		for(int i=0;i<file.length;i++) {
			fileName=fileSaver.save(realPath, file[i]);			
			switch (i) {
			case 0: 
				goodsVO.setImg1(fileName);
				System.out.println("img1Saved");
				break;
			case 1:
				goodsVO.setImg2(fileName);
				System.out.println("img2Saved");
				break;
			case 2:
				goodsVO.setImg3(fileName);
				System.out.println("img3Saved");
				break;
			case 3:
				goodsVO.setImg4(fileName);
				System.out.println("img4Saved");
			}
		}
		*/
		//1-2
		goodsVO.setCoupon(couponMaker.makeCoupon(goodsVO.getCity_num()));
		goodsVO.setCity_name(goodsDAO.getCityName(goodsVO.getCity_num()));
		goodsVO.setLocation(goodsDAO.getCityName(goodsVO.getCity_num()));
		goodsVO.setImg(goodsVO.getImg());
		int rsGoods=goodsDAO.goodsInsert(goodsVO);
		System.out.println("test : goodsService.addGoods.rsGoods : "+rsGoods);
		//get goodsNum
		int maxGoodsNum=goodsDAO.maxGoodsNum();
		//2.infoVO
		infoVO.setGoods_num(maxGoodsNum);
		rsGoods=goodsDAO.infoInsert(infoVO);
		System.out.println("test : goodsService.addGoods.rsInfo : "+rsGoods);	
		return rsGoods;
	}


	//도시추가페이지
	public int city_add(NationVO nationVO) throws Exception{
		return adminDAO.city_add(nationVO);
	}
	
	public List<NationVO> city_list() throws Exception{
		return adminDAO.city_list();
	}
	
	public NationVO check_city(NationVO nationVO) throws Exception{
		return adminDAO.check_city(nationVO);
	}

	
	public int goodsDelete(GoodsVO goodsVO) throws Exception{
		int result=goodsDAO.goodsDelete(goodsVO);
		return result;
	}
	
	public ArrayList<Object> goods_update(GoodsVO goodsVO) throws Exception{
		InfoVO infovo=goodsDAO.selectGoodsInfo(goodsVO.getGoods_num());
		GoodsVO goodsVO2=goodsDAO.goosSelectOne(goodsVO.getGoods_num());
		ArrayList<Object> goods=new ArrayList<Object>();
		goods.add(infovo);
		goods.add(goodsVO2);
		return goods;
	}
	
	//테마추가
	public int addTheme(ThemeVO themeVO) throws Exception{
		return adminDAO.addTheme(themeVO);
	}
	//테마하나조회
	public ThemeVO selectTheme(ThemeVO themeVO) throws Exception{
		return adminDAO.selectTheme(themeVO);
	}
	
	public int theme_update(ThemeVO themeVO) throws Exception{
		return adminDAO.theme_update(themeVO);
	}
	public int theme_delete(ThemeVO themeVO) throws Exception{
		return adminDAO.theme_delete(themeVO);
	}
	public List<ReviewVO> review_list(Pager pager) throws Exception{
		pager.makeRow();
		pager.makePage(adminDAO.review_count(pager));
		return adminDAO.review_list(pager);
	}
	public int count_review_new() throws Exception{
		return adminDAO.count_review_new();
	}
	public ReviewVO review_select(ReviewVO reviewVO) throws Exception{
		return adminDAO.review_select(reviewVO);
	}
	public int check_update() throws Exception{
		return adminDAO.check_update();
	}
	public int[] reservation_date_s()throws Exception{
		int[] reservation_for5days=new int[5];
		reservation_for5days[0]=adminDAO.reservation_date_4();
		reservation_for5days[1]=adminDAO.reservation_date_3();
		reservation_for5days[2]=adminDAO.reservation_date_2();
		reservation_for5days[3]=adminDAO.reservation_date_1();
		reservation_for5days[4]=adminDAO.reservation_date_today();
		return reservation_for5days;
	}
	public List<Integer> hot5_goods()throws Exception{
		return adminDAO.hot5_goods();
	}
	public int[] topInfo()throws Exception{
		int[] topInfo=new int[4];
		topInfo[0]=adminDAO.countMember();
		topInfo[1]=adminDAO.countGoods();
		topInfo[2]=adminDAO.countReservation();
		topInfo[3]=adminDAO.sumTotalSale();
		return topInfo;
	}
	public List<String> hot5_city()throws Exception{
		return adminDAO.hot5_city();
	}
	public List<GoodsVO> hot5_goodsss() throws Exception{
		return adminDAO.hot5_goodsss();
	}
}
