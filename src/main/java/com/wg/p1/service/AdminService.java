package com.wg.p1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.AdminDAO;
import com.wg.p1.model.NationVO;

@Service
public class AdminService {

	@Inject
	private AdminDAO adminDAO;
	
	public int city_add(NationVO nationVO) throws Exception{
		return adminDAO.city_add(nationVO);
	}
}
