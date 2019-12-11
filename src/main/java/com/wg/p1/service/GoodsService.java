package com.wg.p1.service;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;

@Service
public class GoodsService {

	@Inject
	private GoodsDAO goodsDAO;

	public ArrayList<GoodsVO> goodsRecomand(GoodsVO goodsVO) throws Exception{
		return (ArrayList<GoodsVO>)goodsDAO.goodsRecomand(goodsVO);
	}
	
	public GoodsVO selectOneGoods(int goods_num) throws Exception{
		return goodsDAO.goosSelectOne(goods_num);
	}
}
