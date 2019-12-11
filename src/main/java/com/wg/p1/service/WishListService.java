package com.wg.p1.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.WishListDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.MemberVO;
import com.wg.p1.model.WishListVO;

@Service
public class WishListService {

	@Inject
	private WishListDAO wishListDAO;
	
	public int wishAdd(WishListVO wishListVO) throws Exception{

		return wishListDAO.wishAdd(wishListVO);
	}
	
	public int wishDel(MemberVO memberVO) throws Exception{
		return wishListDAO.wishDel(memberVO);
	}
	
	public List<GoodsVO> myWish(MemberVO memberVO) throws Exception{
		return wishListDAO.myWish(memberVO);
	}

	public int wishCount(int goods_num, String email) throws Exception {
		// TODO Auto-generated method stub
		return wishListDAO.wishCount(goods_num,email);
	}
	
}
