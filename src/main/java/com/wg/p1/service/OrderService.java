  
package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.wg.p1.dao.OptionDAO;
import com.wg.p1.dao.OrderDAO;
import com.wg.p1.model.BookerInfoVO;

import com.wg.p1.model.OptionVO;


@Service
public class OrderService {

	@Inject
	private OrderDAO orderDAO;

	private List<BookerInfoVO> booker;

	public List<OptionVO> selectOptionTime()throws Exception{
		List<OptionVO> ar=orderDAO.selectOptionTime();
		return ar;
	}
	
	public int insertBookerInfo(String[] firstName,String[] lastName, String[] passport, int[] b_gender,String sns,String b_visit,String b_name, String b_email)throws Exception{
		BookerInfoVO bookerInfoVO = new BookerInfoVO();
		bookerInfoVO.setFirstName(firstName[0]);
		bookerInfoVO.setLastName(lastName[0]);
		bookerInfoVO.setPassport(passport[0]);
		bookerInfoVO.setSns(sns);
		bookerInfoVO.setB_visit(b_visit);
		bookerInfoVO.setB_name(b_name);
		bookerInfoVO.setB_email(b_email);
		int result = orderDAO.insertBookerInfo(bookerInfoVO);
		System.out.println(bookerInfoVO.getB_num());
		for(int i=1; i<firstName.length;i++) {
			bookerInfoVO.setB_ref(bookerInfoVO.getB_num());
			bookerInfoVO.setFirstName(firstName[i]);
			bookerInfoVO.setLastName(lastName[i]);
			bookerInfoVO.setPassport(passport[i]);
			bookerInfoVO.setB_gender(b_gender[i-1]);
			bookerInfoVO.setSns(sns);
			bookerInfoVO.setB_visit(b_visit);
			bookerInfoVO.setB_name(b_name);
			bookerInfoVO.setB_email(b_email);
			orderDAO.insertBookerInfo2(bookerInfoVO);
		}
		return result;
	}


	
}