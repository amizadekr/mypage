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
	public int insertMember(MemberVo membervo) throws Exception {
		return memberDao.insertMember(membervo);
	}
}
