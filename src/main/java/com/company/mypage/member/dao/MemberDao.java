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
	public int insertMember(MemberVo membervo) {
		return sqlSession.insert("member.insertMember", membervo);
	}
	
}
