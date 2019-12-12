package com.wg.p1.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.util.Pager;

@Service
public class GoodsService {

	@Inject
	private GoodsDAO goodsDAO;

	public List<GoodsVO> goodsRecomand(GoodsVO goodsVO) throws Exception{
		return goodsDAO.goodsRecomand(goodsVO);
	}
	
	public List<NationVO> CityList() throws Exception{
		return goodsDAO.CityList();
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
}
