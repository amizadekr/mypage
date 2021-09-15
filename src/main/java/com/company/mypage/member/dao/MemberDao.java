package com.company.mypage.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.mypage.member.vo.MemberVo;


@Repository
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	//회원가입
	public int insertMember(MemberVo member) {
		return sqlSession.insert("member.insertMember", member);
	}
	
	//이메일 체크
	public int emailCheck(MemberVo member) {
		int result = sqlSession.selectOne("member.emailCheck", member);
		return result;
	}
	
	//닉네임 체크
	public int nickNameCheck(MemberVo member) {
		int result = sqlSession.selectOne("member.nickNameCheck", member);
		return result;
	}
	
	//로그인
	public MemberVo login(MemberVo member) {
		return sqlSession.selectOne("member.selectLogin", member);
	}
	
}
