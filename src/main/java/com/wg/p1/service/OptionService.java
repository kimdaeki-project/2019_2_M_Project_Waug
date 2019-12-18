package com.wg.p1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.OptionDAO;
import com.wg.p1.model.GoodsVO;
import com.wg.p1.model.OptionVO;

@Service
public class OptionService {

	@Inject
	private OptionDAO optionDAO;
	
	public int optionAdd(OptionVO optionVO) throws Exception{
		return optionDAO.optionAdd(optionVO);
	}
	public List<GoodsVO> optionList(OptionVO optionVO) throws Exception{
		return optionDAO.optionList(optionVO);
	}
}
