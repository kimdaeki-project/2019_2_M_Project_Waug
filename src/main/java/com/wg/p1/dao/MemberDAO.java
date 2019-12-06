package com.wg.p1.dao;

import org.springframework.stereotype.Repository;

import com.wg.p1.model.MemberVO;

@Repository
public interface MemberDAO {

	//join
	public int memberJoin(MemberVO memberVO) throws Exception;
	//selectOne
	public MemberVO memberSelect(MemberVO memberVO) throws Exception;
	//update
	public int memberUpdate(MemberVO memberVO) throws Exception;
	//delete
	public int memberDelete() throws Exception;

}
