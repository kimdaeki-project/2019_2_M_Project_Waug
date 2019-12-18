package com.wg.p1.service;

import java.util.UUID;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wg.p1.dao.MemberDAOImpl;
import com.wg.p1.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAOImpl memberDAO; 
	
	@Override
	public int memberJoin(MemberVO memberVO) throws Exception {
		String filename =UUID.randomUUID().toString();
		memberVO.setUuid(filename);
		return memberDAO.memberJoin(memberVO);
	}


	@Override
	public MemberVO memberLogin(MemberVO memberVO) throws Exception {
		return memberDAO.memberSelect(memberVO);
	}

	@Override
	public int memberUpdate(MemberVO memberVO) throws Exception {
		return memberDAO.memberUpdate(memberVO);
	}

	@Override
	public int memberDelete(MemberVO memberVO) throws Exception {
		return memberDAO.memberDelete(memberVO);
	}

	@Override
	public MemberVO memberSelect(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int socialJoin(MemberVO memberVO) throws Exception {
		
		return memberDAO.socialJoin(memberVO);
	}
	@Override
	public int passwordUpdate(MemberVO memberVO) throws Exception {
		String filename =UUID.randomUUID().toString();
		memberVO.setUuid(filename);
		return memberDAO.passwordUpdate(memberVO);
	}
	@Override
	public MemberVO memberFind(MemberVO memberVO) throws Exception {
		return memberDAO.memberFind(memberVO);
	}
	@Override
	public MemberVO memberFind2(MemberVO memberVO) throws Exception {
		return memberDAO.memberFind2(memberVO);
	}
	
}
