package com.wg.p1.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.MemberVO;


@Service
public class GoodsService {

	@Inject
	private GoodsDAO goodsDAO;


	public List<NationVO> CityList() throws Exception{
		return goodsDAO.CityList();
	}
	
	public NationVO City(NationVO nationVO) throws Exception{
		return goodsDAO.City(nationVO);
	}
	
	public List<GoodsVO> GoodsList() throws Exception{
		return goodsDAO.goodsList();

	}
	public ArrayList<GoodsVO> goodsRecomand(MemberVO memberVO) throws Exception{
		return (ArrayList<GoodsVO>)goodsDAO.goodsRecomand(memberVO);

	}
	
	public GoodsVO selectOneGoods(int goods_num) throws Exception{
		return goodsDAO.goosSelectOne(goods_num);
	}
}
