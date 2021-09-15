package com.company.mypage.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.mypage.member.dao.MemberDao;
import com.company.mypage.member.vo.MemberVo;

@Service
public class MemberService {
	@Autowired
	MemberDao memberDao;

	//회원가입
	public int insertMember(MemberVo member) {
		return memberDao.insertMember(member);
	}
	
	//이메일 체크
	public int emailCheck(MemberVo member) {
		int result = memberDao.emailCheck(member);
		return result;
	}
	
	//nickName 체크
	public int nickNameCheck(MemberVo member) {
		int result = memberDao.nickNameCheck(member);
		return result;
	}
	
	//로그인
	public MemberVo selectLogin(MemberVo member) {
		return memberDao.login(member);
	}
}
