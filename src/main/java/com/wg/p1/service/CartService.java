package com.wg.p1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.CartDAO;
import com.wg.p1.model.CartVO;

@Service
public class CartService {

	@Inject
	private CartDAO cartDAO;
	
	
	public int cartAdd(CartVO cartVO) throws Exception{
		return cartDAO.cartAdd(cartVO);
	}
}
