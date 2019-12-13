package com.wg.p1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.NationVO;

@Repository
public class AdminDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="adminMapper.";
	
	public int city_add(NationVO nationVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"city_add",nationVO);
	}

}
