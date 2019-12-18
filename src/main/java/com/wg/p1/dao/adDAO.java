package com.wg.p1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.ThemeVO;


@Repository
public class adDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String NAMESPACE="adMapper.";
	
	public int addTheme(ThemeVO themeVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addTheme", themeVO);
	}
}
