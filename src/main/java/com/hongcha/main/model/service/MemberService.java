package com.hongcha.main.model.service;

import com.hongcha.main.model.vo.Member;

public interface MemberService {
	

	// 회원가입
	int insertMember(Member m);
	
	// 로그인
	Member loginMember(Member m);
	
	// 비밀번호 찾기
	
	// 이름ajax
	int joinCheckNickName(String nickName);
	
	// 이메일ajax
	int joinCheckEmail(String email);
	
	// 아이디 체크
	int joinCheckId(String mid);
	
	// 자동로그인시, id로 정보 가져오기
	Member getMember(String mid);
		
	
	// 구글로그인
	Member googleLogin(String email, String mid);

}
