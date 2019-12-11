package com.wg.p1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.InfoVO;

public class GoodsTest extends testAbstractCase{

	@Inject
	private GoodsDAO goodsDAO;

	private GoodsVO goodsVO;
	
	//@Test
	public void selectOneGoods() throws Exception{	
		goodsVO=goodsDAO.goosSelectOne(7);	//test ok;
		System.out.println("test************************");
		System.out.println(goodsVO.getCity_num());
		System.out.println(goodsVO.getImg());
		System.out.println(goodsVO.getLocation());
		assertNotNull(goodsVO);
	}
	@Test
	public void selectGoodsInfo() throws Exception{
		System.out.println("test************************");
		InfoVO info=goodsDAO.selectGoodsInfo(7);
		System.out.println(info.getCancel());
		System.out.println(info.getDelivery_time());
		System.out.println(info.getDuration());
		System.out.println(info.getLanguage());
		System.out.println(info.getPeople());
		System.out.println(info.getPick_up());
		
		assertNotNull(info);
	}
}
