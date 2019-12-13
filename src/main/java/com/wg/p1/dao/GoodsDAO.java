package com.wg.p1.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.GoodsVO;

import com.wg.p1.model.InfoVO;

import com.wg.p1.model.NationVO;


@Repository
public class GoodsDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="goodsMapper.";
	
	//infoInsert
	public int infoInsert(InfoVO infoVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"infoInsert", infoVO);
	}
	//goodsInsert
	public int goodsInsert(GoodsVO goodsVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"goodsInsert", goodsVO);
	}
	//selectGoodsInfo
	public InfoVO selectGoodsInfo(int goods_num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"selectGoodsInfo", goods_num);
	}
	
	//goodsList
	public List<GoodsVO> goodsList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"goodsList");
	}
	
	public List<NationVO> CityList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"areaRecomand");
	}
	
	public NationVO City(NationVO nationVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"areaSelect", nationVO);
	}
	public GoodsVO goosSelectOne(int goods_num) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"goodsSelectOne", goods_num);

	}
	
	public List<GoodsVO> goodsRecomand(GoodsVO goodsVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"goodsRecomand", goodsVO);
	}
	
}
