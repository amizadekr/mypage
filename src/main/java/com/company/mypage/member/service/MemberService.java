package com.company.mypage.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.mypage.member.dao.MemberDao;
import com.company.mypage.member.vo.JoinVo;
import com.company.mypage.member.vo.LoginVo;
import com.company.mypage.member.vo.MemberVo;

@Service
public class MemberService {
	@Autowired
	MemberDao memberDao;

	//회원가입
	public int insertMember(JoinVo member) throws Exception {
		return memberDao.insertMember(member);
	}
	
	//이메일 체크
	public int emailCheck(MemberVo member) throws Exception {
		int result = memberDao.emailCheck(member);
		return result;
	}
	
	//nickName 체크
	public int nickNameCheck(MemberVo member) throws Exception {
		int result = memberDao.nickNameCheck(member);
		return result;
	}
	
	//로그인
	public MemberVo selectLogin(LoginVo member) throws Exception {
		return (MemberVo) memberDao.selectLogin(member);
	}

}
