package com.wg.p1;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.wg.p1.dao.AdminDAO;
import com.wg.p1.service.AdminService;

public class AdminTest extends testAbstractCase{

	@Inject
	private AdminDAO adminDAO;
	
	@Inject
	private AdminService adminService;
	
	//@Test
	public void test() throws Exception{
		
		int[] arr=adminService.reservation_date_s();
		
		for (int i = 0; i < arr.length; i++) {
			System.out.println("arr "+i+" : "+arr[i]);
		}
		
		assertNotNull(arr);
	}
	
	@Test
	public void test2()throws Exception{
		List<Integer> list=adminDAO.hot5_goods();
		
		for(int i=0;i<list.size();i++) {
			System.out.println("list.get(i) : "+list.get(i));
		}
	}

}
