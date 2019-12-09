package com.wg.p1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.ReviewDAO;
import com.wg.p1.model.ReviewVO;

@Service
public class ReviewService {
	@Inject
	ReviewDAO reviewDAO;
	
	public int reviewWrite(ReviewVO reviewVO) throws Exception{
		
		return reviewDAO.reviewWrite(reviewVO);
	}
}
