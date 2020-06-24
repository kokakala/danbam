package com.hongcha.main.member.model.service;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.hongcha.main.member.model.dao.MemberDao;
import com.hongcha.main.member.model.vo.Member;

@Repository("mService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private DataSourceTransactionManager transactionManager;

	@Override
	public int insertMember(Member m) {

		return mDao.insertMember(m);
	}

	@Override
	public Member loginMember(Member m) {

		return mDao.loginMember(m);
	}

	@Override
	public int joinCheckNickName(String nickName) {

		return mDao.joinCheckNickName(nickName);
	}

	@Override
	public int joinCheckEmail(String email) {

		return mDao.joinCheckEmail(email);
	}

	@Override
	public Member getMember(String mid) {

		return mDao.getMember(mid);
	}


	@Override
	public int joinCheckId(String mid) {

		return mDao.joinCheckId(mid);
	}
	
	@Override
	public Member googleLogin(String email, String mid) {
		
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		
		
		TransactionStatus status = transactionManager.getTransaction(def);
		
		try {
			sqlSession.getConnection().setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		int result1 = mDao.selectgoogle(mid);
		Member mem = new Member();
		
		if(result1 > 0) {
			mem = mDao.getMember(email);
		}else {
			int result2 = mDao.insertgoogle(email, mid);
			if(result2 > 0) {
				transactionManager.commit(status);
				mem = mDao.getMember(email);
			}else {
				transactionManager.rollback(status);
			}
		}
		
		return mem;
	}

	@Override
	public int exit(String mid) {
		
		return mDao.exit(mid);
	}

}
