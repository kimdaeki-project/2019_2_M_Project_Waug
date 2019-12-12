package com.wg.p1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.CartVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.MemberVO;

@Repository
public class CartDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="cartMapper.";
	
	
	public int cartAdd(CartVO cartVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"cartAdd", cartVO);
	}
	
	public int cartDel(int cart_num) throws Exception{
		return sqlSession.delete(NAMESPACE+"cartDel",cart_num);
	}
	
	public List<GoodsVO> myCart(MemberVO memberVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"myCart", memberVO);	
	}
	
	
	public int cartSum(MemberVO memberVO) { 
		return sqlSession.selectOne(NAMESPACE+"cartSum", memberVO); 
	}
	 
	public int cartCount(MemberVO memberVO) {
		return sqlSession.selectOne(NAMESPACE+"cartCount", memberVO);
	}
	
}
