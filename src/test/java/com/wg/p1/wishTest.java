package com.wg.p1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.model.WishListVO;
import com.wg.p1.service.WishListService;

public class wishTest extends testAbstractCase  {

	@Inject
	private WishListService wishlist;
	@Test
	public void test(WishListVO wishListVO) throws Exception {
	
		wishListVO.setEmail("dd");
		wishListVO.setGoods_num(1);
		wishListVO.setW_num(1);
		int result = wishlist.wishAdd(wishListVO);
		assertEquals(0, result);
	
	}

}
