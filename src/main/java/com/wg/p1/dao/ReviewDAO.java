package com.wg.p1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.ReviewVO;

@Repository
public class ReviewDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private final static String NAMESPACE="reviewMapper.";
	
	public int reviewWrite(ReviewVO reviewVO) throws Exception{
		System.out.println(reviewVO.getRv_writer());
		return sqlSession.insert(NAMESPACE+"reviewWrite", reviewVO);
	}
}
