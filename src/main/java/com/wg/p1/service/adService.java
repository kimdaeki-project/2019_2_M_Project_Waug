package com.wg.p1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.adDAO;
import com.wg.p1.model.ThemeVO;

@Service
public class adService {
	@Inject
	adDAO adDAO;
	
	public int addTheme(ThemeVO themeVO) throws Exception{
		return adDAO.addTheme(themeVO);
	}
}
