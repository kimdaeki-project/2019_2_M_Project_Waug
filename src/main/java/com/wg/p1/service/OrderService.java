package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.OrderDAO;
import com.wg.p1.model.GoodsOptionVO;

@Service
public class OrderService {

	@Inject
	private OrderDAO orderDAO;
	
	public List<GoodsOptionVO> selectOptionTime()throws Exception{
		List<GoodsOptionVO> ar=orderDAO.selectOptionTime();
		return ar;
	}
	
	
}
