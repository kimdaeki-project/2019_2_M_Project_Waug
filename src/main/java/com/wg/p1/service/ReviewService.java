package com.wg.p1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.ReviewDAO;

@Service
public class ReviewService {
	@Inject
	ReviewDAO reviewDAO;
}
