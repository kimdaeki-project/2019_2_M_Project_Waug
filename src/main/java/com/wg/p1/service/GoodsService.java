package com.wg.p1.service;


import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.CategoryVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.ThemeVO;
import com.wg.p1.util.CouponMaker;
import com.wg.p1.util.FileSaver;
import com.wg.p1.util.Pager;
import com.wg.p1.model.MemberVO;


@Service
public class GoodsService {

	@Inject
	private FileSaver fileSaver;
	@Inject
	private GoodsDAO goodsDAO;

	//selectGoodsInfo
	public InfoVO selectGoodsInfo(int goods_num)throws Exception{
		return goodsDAO.selectGoodsInfo(goods_num);
	}

	//quickSearch
	public List<GoodsVO> quickSearch_usim() throws Exception{
		return goodsDAO.quickSearch_usim();
	}
	public List<GoodsVO> quickSearch_airport() throws Exception{
		return goodsDAO.quickSearch_airport();
	}
	public List<GoodsVO> quickSearch_jr() throws Exception{
		return goodsDAO.quickSearch_jr();
	}
	public List<GoodsVO> quickSearch_eurail() throws Exception{
		return goodsDAO.quickSearch_eurail();
	}
	
	public List<GoodsVO> goodsRecomand(MemberVO memberVO) throws Exception{
		return goodsDAO.goodsRecomand(memberVO);
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
	
	//메인페이지 검색용 - 도시
	public List<NationVO> Citysearch(Pager pager) throws Exception{
		return goodsDAO.Citysearch(pager);
	}
	//메인페이지 검색용 - 상품
	public List<GoodsVO> Goodssearch(Pager pager) throws Exception{
		return goodsDAO.Goodssearch(pager);
	}
	
}
