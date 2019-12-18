package com.wg.p1.service;



import com.wg.p1.model.MemberVO;

public interface MemberService {
	
		//join
		public int memberJoin(MemberVO memberVO) throws Exception;
		public int socialJoin(MemberVO memberVO) throws Exception;
		//login
		public MemberVO memberLogin(MemberVO memberVO) throws Exception;
		//update
		public int memberUpdate(MemberVO memberVO) throws Exception;
		//delete
		public int memberDelete(MemberVO memberVO) throws Exception;
		//select
		public MemberVO memberSelect(MemberVO memberVO) throws Exception;
		//update
		public int passwordUpdate(MemberVO memberVO) throws Exception;
		//memberFind
		public MemberVO memberFind(MemberVO memberVO) throws Exception;
		//memberFind2
		public MemberVO memberFind2(MemberVO memberVO) throws Exception;
}
