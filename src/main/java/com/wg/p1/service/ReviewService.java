package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.ReviewDAO;
import com.wg.p1.model.ReviewVO;
import com.wg.p1.util.Pager;

@Service
public class ReviewService {
	@Inject
	ReviewDAO reviewDAO;
	
	public int reviewWrite(ReviewVO reviewVO) throws Exception{
		String name = reviewVO.getRv_writer();
		int length = name.length();
		
		name = name.substring(0, 2);
		for (int i = 0; i < length-2; i++) {
			name = name.concat("*");
		}
		reviewVO.setRv_writer(name);
		int result = reviewDAO.reviewWrite(reviewVO);
		System.out.println(reviewVO.getRv_num());
		
		return result;
	}
	
	public List<ReviewVO> reviewList(Pager pager) throws Exception{
		pager.makeRow();
		pager.makePage(reviewDAO.reviewCount(pager));
		return reviewDAO.reviewList(pager);
	}
	
	public int reviewDelete(ReviewVO reviewVO) throws Exception{
		return reviewDAO.reviewDelete(reviewVO);
	}
	public ReviewVO reviewSelect(ReviewVO reviewVO) throws Exception{
		return reviewDAO.reviewSelect(reviewVO);
		
	}
	public int reviewUpdate(ReviewVO reviewVO) throws Exception{
		return reviewDAO.reviewUpdate(reviewVO);
	}
	public int reviewReply(ReviewVO reviewVO) throws Exception{
		return reviewDAO.reviewReply(reviewVO);
	}
	
	public ReviewVO review_avg_total(ReviewVO reviewVO) throws Exception{
		return reviewDAO.review_avg_count(reviewVO);
	}
	public ReviewVO reviewLatest(ReviewVO reviewVO) throws Exception{
		return reviewDAO.reviewLatest(reviewVO);
	}
}
