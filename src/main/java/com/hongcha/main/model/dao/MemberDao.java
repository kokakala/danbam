package com.hongcha.main.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hongcha.main.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member loginMember(Member m) {
		
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int insertMember(Member m) {

		return sqlSession.insert("memberMapper.insertMember", m);
	}


	public int joinCheckNickName(String nickName) {

		return sqlSession.selectOne("memberMapper.joinCheckNickName", nickName);
	}

	public int joinCheckEmail(String email) {

		return sqlSession.selectOne("memberMapper.joinCheckEmail", email);
	}

	public Member getMember(String mid) {

		return sqlSession.selectOne("memberMapper.getMember", mid);
	}

	public int joinCheckId(String mid) {

		return sqlSession.selectOne("memberMapper.joinCheckId", mid);
	}

	public int selectgoogle(String mid) {

		return sqlSession.selectOne("memberMapper.selectgoogle", mid);
	}

	public int insertgoogle(String email, String mid) {

		HashMap<String, String> hsm = new HashMap<>();
		
		hsm.put("email", email);
		hsm.put("mid", mid);
		
		return sqlSession.insert("memberMapper.insertgoogle",hsm);
	}
	
	

	

}
