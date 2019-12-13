package com.wg.p1.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.CategoryVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.ThemeVO;
import com.wg.p1.util.CouponMaker;
import com.wg.p1.util.Pager;
import com.wg.p1.model.MemberVO;


@Service
public class GoodsService {

	
	@Inject
	private GoodsDAO goodsDAO;


	public List<GoodsVO> goodsRecomand(MemberVO memberVO) throws Exception{
		return goodsDAO.goodsRecomand(memberVO);
	}
	
	
	//admin add_goods
	public int addGoods(GoodsVO goodsVO, MultipartFile[] file, InfoVO infoVO)throws Exception{
		CouponMaker couponMaker=new CouponMaker();;
		//fileSaver 만들어서 저장해줄것!!
		//대표이미지 저장하기
		
		System.out.println("City num : "+goodsVO.getCity_num());
		System.out.println("City name : "+goodsVO.getCity_name());
		
		//1.goodsVO		
				goodsVO.setImg1(file[0].getName());
				goodsVO.setImg2(file[1].getName());
				goodsVO.setImg3(file[2].getName());
				goodsVO.setImg4(file[3].getName());
					//1-2
					goodsVO.setCoupon(couponMaker.makeCoupon(goodsVO.getCity_num()));
					goodsVO.setCity_name(goodsDAO.getCityName(goodsVO.getCity_num()));
					goodsVO.setImg("./resources/images/test.jpg");
		
					
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
	
	//인기도시
	public List<NationVO> CityList() throws Exception{
		return goodsDAO.CityList();
	}
	//유럽도시
	public List<NationVO> EuropeList() throws Exception{
		return goodsDAO.EuropeList();
	}
	//아시아도시
	public List<NationVO> AsiaList() throws Exception{
		return goodsDAO.AsiaList();
	}
	public NationVO City(NationVO nationVO) throws Exception{
		return goodsDAO.City(nationVO);
	}
	

	public List<GoodsVO> GoodsList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makePage(goodsDAO.goodsCount(pager));
		
		return goodsDAO.goodsList(pager);
	}
	
	public GoodsVO selectOneGoods(int goods_num) throws Exception{
		return goodsDAO.goosSelectOne(goods_num);
	}
	
	public List<NationVO> CityAll() throws Exception{
		return goodsDAO.CityAll();
	}
	
	public List<ThemeVO> ThemeAll() throws Exception{
		return goodsDAO.ThemeAll();
	}
	public List<CategoryVO> CateAll() throws Exception{
		return goodsDAO.CateAll();
	}
	
	
}
