package com.wg.p1.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.CategoryVO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.NationVO;
import com.wg.p1.model.ThemeVO;
import com.wg.p1.util.Pager;

@Repository
public class GoodsDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="goodsMapper.";
	
	public List<GoodsVO> goodsRecomand(GoodsVO goodsVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"goodsRecomand", goodsVO);
	}
	

	public List<GoodsVO> goodsList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"goodsList", pager);
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
	public int goodsCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"goodsCount", pager);
	}
	
	public List<NationVO> CityAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"cityList");
	}
	
	public List<CategoryVO> CateAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"cateList");
	}
	public List<ThemeVO> ThemeAll() throws Exception{
		return sqlSession.selectList(NAMESPACE+"themeList");
	}
	
}
