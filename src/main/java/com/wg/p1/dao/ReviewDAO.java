package com.wg.p1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.ReviewImgVO;
import com.wg.p1.model.ReviewVO;
import com.wg.p1.util.Pager;

@Repository
public class ReviewDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private final static String NAMESPACE="reviewMapper.";
	
	public List<ReviewVO> reviewList(Pager pager) throws Exception{
		List<ReviewVO> ar = sqlSession.selectList(NAMESPACE+"reviewList", pager);
		return ar;
	}
	
	public int reviewWrite(ReviewVO reviewVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"reviewWrite", reviewVO);
	}
	//리뷰이미지
	public int review_imgWrite(ReviewImgVO reviewImgVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"review_imgWrite", reviewImgVO);
	}
	public int review_imgDelete(ReviewImgVO reviewImgVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"review_imgDelete", reviewImgVO);
	}
	
	public int reviewCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"reviewCount", pager);
	}
	
	public int reviewDelete(ReviewVO reviewVO) throws Exception{
		return sqlSession.delete(NAMESPACE+"reviewDelete", reviewVO);
	}
	
	public ReviewVO reviewSelect(ReviewVO reviewVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"reviewSelect", reviewVO);
	}
	public int reviewUpdate(ReviewVO reviewVO) throws Exception{
		return sqlSession.update(NAMESPACE+"reviewUpdate", reviewVO);
	}
	public int reviewReply(ReviewVO reviewVO) throws Exception{
		return sqlSession.update(NAMESPACE+"reviewReply", reviewVO);
	}
	
	public ReviewVO review_avg_count(ReviewVO reviewVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"review_avg_count", reviewVO);
	}
	
	public ReviewVO reviewLatest(ReviewVO reviewVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"reviewLatest",reviewVO);
	}
}
