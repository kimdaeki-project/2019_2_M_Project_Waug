package com.wg.p1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.OptionVO;

@Repository
public class OptionDAO {
	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE="optionMapper.";
	
	public int optionAdd(OptionVO optionVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"optionAdd", optionVO);
	}
	
	public List<GoodsVO> optionList(OptionVO optionVO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"optionList", optionVO);
	}
}
