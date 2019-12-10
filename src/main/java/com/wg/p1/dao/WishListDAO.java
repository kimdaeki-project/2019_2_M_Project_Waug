package com.wg.p1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.WishListVO;

@Repository
public class WishListDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="wishlistMapper.";

	public int wishAdd(WishListVO wishListVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"wishAdd", wishListVO);
	}
	
	public int wishDel(WishListVO wishListVO) throws Exception{
		return sqlSession.delete(NAMESPACE+"wishDel", wishListVO);
	}
	
	public List<GoodsVO> myWish(GoodsVO goodsVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"myWish", goodsVO);
	}
}
