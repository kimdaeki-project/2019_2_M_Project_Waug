package com.wg.p1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.wg.p1.dao.ReviewDAO;
import com.wg.p1.model.ReviewVO;

public class reviewTest extends testAbstractCase {
	
	@Inject
	ReviewDAO reviewDAO;
	@Inject
	SqlSession sqlSession;
	
	@Test
	public void test() throws Exception{
		int result = 0;
		for (int i = 0; i < 5; i++) {
			ReviewVO reviewVO = new ReviewVO();
			reviewVO.setEmail("review@review"+i+".com");
			reviewVO.setRv_writer("reviewtest"+i);
			reviewVO.setRv_contents("reviewtest"+i);
			reviewVO.setRv_score(2);
			result = reviewDAO.reviewWrite(reviewVO);
			
		}
		
		assertEquals(1, result);
	}

}
