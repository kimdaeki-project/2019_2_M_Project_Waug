package com.wg.p1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.dao.GoodsDAO;
import com.wg.p1.model.GoodsVO;

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

}
