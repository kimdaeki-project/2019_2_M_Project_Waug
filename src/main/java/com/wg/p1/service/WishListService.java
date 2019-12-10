package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.WishListDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.WishListVO;

@Service
public class WishListService {

	@Inject
	private WishListDAO wishListDAO;
	
	public int wishAdd(WishListVO wishListVO) throws Exception{
		return wishListDAO.wishAdd(wishListVO);
	}
	
	public int wishDel(WishListVO wishListVO) throws Exception{
		return wishListDAO.wishDel(wishListVO);
	}
	
	public List<GoodsVO> myWish(GoodsVO goodsVO) throws Exception{
		return wishListDAO.myWish(goodsVO);
	}
}
