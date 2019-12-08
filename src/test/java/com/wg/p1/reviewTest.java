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
	
	//@Test
	public void test() throws Exception{
		ReviewVO reviewVO = new ReviewVO();
		
		reviewVO.setGoods_num(1);
		reviewVO.setRv_title("reviewtest1");
		reviewVO.setRv_writer("reviewtest1");
		reviewVO.setRv_contents("reviewtest1");
		reviewVO.setRv_score(5);
		int result = reviewDAO.reviewWrite(reviewVO);
		
		assertEquals(1, result);
	}
	@Test
	public void test2() throws Exception{
		
		assertNotNull(sqlSession);
	}

}
