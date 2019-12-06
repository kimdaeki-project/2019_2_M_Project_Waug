package com.wg.p1.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.wg.p1.model.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSession sqlSession;
	private final static String NAMESPACE="memberMapper.";
	
	@Override
	public int memberJoin(MemberVO memberVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"memberJoin", memberVO);
	}

	@Override
	public MemberVO memberSelect(MemberVO memberVO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"memberLogin", memberVO);
	}

	@Override
	public int memberUpdate() throws Exception {
		return 0;
	}

	@Override
	public int memberDelete() throws Exception {
		return 0;
	}


}
