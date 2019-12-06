package com.wg.p1.service;


import org.springframework.stereotype.Service;

import com.wg.p1.model.MemberVO;

public interface MemberService {
	
		//join
		public int memberJoin(MemberVO memberVO) throws Exception;
		//login
		public MemberVO memberLogin(MemberVO memberVO) throws Exception;
		//update
		public int memberUpdate(MemberVO memberVO) throws Exception;
		//delete
		public int memberDelete(MemberVO memberVO) throws Exception;
		//select
		public MemberVO memberSelect(MemberVO memberVO) throws Exception;

}
