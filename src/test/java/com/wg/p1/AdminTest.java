package com.wg.p1;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.dao.AdminDAO;
import com.wg.p1.service.AdminService;

public class AdminTest extends testAbstractCase{

	@Inject
	private AdminDAO adminDAO;
	
	@Inject
	private AdminService adminService;
	
	@Test
	public void test() throws Exception{
		
		int[] arr=adminService.reservation_date_s();
		
		for (int i = 0; i < arr.length; i++) {
			System.out.println("arr "+i+" : "+arr[i]);
		}
		
		assertNotNull(arr);
	}

}
