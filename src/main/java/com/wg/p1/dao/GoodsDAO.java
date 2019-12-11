package com.wg.p1.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.GoodsVO;

@Repository
public class GoodsDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="goodsMapper.";
	
	public List<GoodsVO> goodsRecomand(GoodsVO goodsVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"goodsRecomand", goodsVO);
	}
	
	public GoodsVO goosSelectOne(int goods_num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"goodsSelectOne", goods_num);
	}
}
