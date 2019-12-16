package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.wg.p1.dao.ReviewDAO;
import com.wg.p1.model.ReviewImgVO;
import com.wg.p1.model.ReviewVO;
import com.wg.p1.util.FileSaver;
import com.wg.p1.util.Pager;

@Service
public class ReviewService {
	@Inject
	private ReviewDAO reviewDAO;
	@Inject
	private FileSaver fileSaver;
	
	public int reviewWrite(ReviewVO reviewVO, String[] images) throws Exception{
		
		String name = reviewVO.getRv_writer();
		int length = name.length();
		
		name = name.substring(0, 2);
		for (int i = 0; i < length-2; i++) {
			name = name.concat("*");
		}
		reviewVO.setRv_writer(name);
		
		String contents = reviewVO.getRv_contents();
		contents=contents.replace("\r\n", "</br>");
		reviewVO.setRv_contents(contents);
		int result = reviewDAO.reviewWrite(reviewVO);
		System.out.println(reviewVO.getRv_num());
		if(images!=null) {
			for (int i = 0; i < images.length; i++) {
				ReviewImgVO reviewImgVO = new ReviewImgVO();
				reviewImgVO.setRv_num(reviewVO.getRv_num());
				reviewImgVO.setImg_name(images[i]);
				reviewDAO.review_imgWrite(reviewImgVO);
			};
		};
		
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
	public String reviewImage(MultipartFile file,HttpSession session) throws Exception{
		
		String realPath=session.getServletContext().getRealPath("resources/images/reviews");
		System.out.println(realPath);
		String filename = fileSaver.save(realPath, file);
		
		return filename;
	}
}
