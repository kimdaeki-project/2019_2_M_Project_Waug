  
package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.OptionDAO;
import com.wg.p1.dao.OrderDAO;
import com.wg.p1.model.OptionVO;

@Service
public class OrderService {

	@Inject
	private OrderDAO orderDAO;
	@Inject
	private OptionDAO optionDAO;
	
	public int optionAdd(OptionVO optionVO) throws Exception{
		return optionDAO.optionAdd(optionVO);
	}
	
	/*
	 * public List<OptionVO> selectOptionTime()throws Exception{ List<OptionVO>
	 * ar=orderDAO.selectOptionTime(); return ar; }
	 */
	
}