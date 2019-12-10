package com.wg.p1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.WishListDAO;
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
}
