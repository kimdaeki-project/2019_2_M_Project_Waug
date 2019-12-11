package com.wg.p1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.CartVO;

@Repository
public class CartDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="cartMapper.";
	
	
	public int cartAdd(CartVO cartVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"cartAdd", cartVO);
	}
}
