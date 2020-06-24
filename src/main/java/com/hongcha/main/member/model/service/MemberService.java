package com.hongcha.main.member.model.service;

import com.hongcha.main.member.model.vo.Member;

public interface MemberService {
	

	// ȸ������
	int insertMember(Member m);
	
	// �α���
	Member loginMember(Member m);
	
	// ��й�ȣ ã��
	
	// �̸�ajax
	int joinCheckNickName(String nickName);
	
	// �̸���ajax
	int joinCheckEmail(String email);
	
	// ���̵� üũ
	int joinCheckId(String mid);
	
	// �ڵ��α��ν�, id�� ���� ��������
	Member getMember(String mid);
		
	int exit(String mid);
	
	// ���۷α���
	Member googleLogin(String email, String mid);

}
