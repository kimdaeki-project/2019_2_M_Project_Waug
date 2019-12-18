  
package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.dao.OrderDAO;
import com.wg.p1.model.BookerInfoVO;
import com.wg.p1.model.GoodsOptionVO;

@Service
public class OrderService {

	@Inject
	private OrderDAO orderDAO;
	private List<BookerInfoVO> booker;
	public List<GoodsOptionVO> selectOptionTime()throws Exception{
		List<GoodsOptionVO> ar=orderDAO.selectOptionTime();
		return ar;
	}
	
	public int insertBookerInfo(int people,String[] firstName,String[] lastName, String[] passport, int[] b_gender,String sns,String b_visit, String b_email)throws Exception{
		BookerInfoVO bookerInfoVO = new BookerInfoVO();
		bookerInfoVO.setFirstName(firstName[0]);
		bookerInfoVO.setLastName(lastName[0]);
		bookerInfoVO.setPassport(passport[0]);
		bookerInfoVO.setSns(sns);
		bookerInfoVO.setB_visit(b_visit);
		String b_name=firstName[0]+" "+lastName[0];
		bookerInfoVO.setB_name(b_name);
		bookerInfoVO.setB_email(b_email);
		int result = orderDAO.insertBookerInfo(bookerInfoVO);
		System.out.println(bookerInfoVO.getB_num());
		for(int i=1; i<people;i++) {
			bookerInfoVO.setB_ref(bookerInfoVO.getB_num());
			System.out.println(bookerInfoVO.getB_num());
			bookerInfoVO.setFirstName(firstName[i]);
			bookerInfoVO.setLastName(lastName[i]);
			bookerInfoVO.setPassport(passport[i]);
			bookerInfoVO.setB_gender(b_gender[i]);
			bookerInfoVO.setSns(sns);
			bookerInfoVO.setB_visit(b_visit);
			b_name=firstName[i]+" "+lastName[i];
			bookerInfoVO.setB_name(b_name);
			orderDAO.insertBookerInfo2(bookerInfoVO);
		}
		
		return bookerInfoVO.getB_num();
	}
	
	public List<BookerInfoVO> selectBookerInfo(int b_num) throws Exception{
		List<BookerInfoVO> bookerInfo=orderDAO.selectBookerInfo(b_num);
		return bookerInfo;
	}
	
}