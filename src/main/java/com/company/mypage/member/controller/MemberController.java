package com.company.mypage.member.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.mypage.member.service.MemberService;
import com.company.mypage.member.vo.MemberVo;

@Controller
public class MemberController {
		@Autowired
		MemberService memberService;

		//회원가입 폼 가기
		@RequestMapping(value="/member/joinForm")
		public String joinform() {
			return "/member/joinForm";
		}
		
		@RequestMapping(value="/member/joinMember")
		public void joinMember(HttpServletRequest request, MemberVo member) throws Exception {
			memberService.insertMember(member);
		}
		
		@RequestMapping(value="/member/emailCheck")
		public void emailCheck() {
			
		}
		
		@RequestMapping(value="/member/nickNameCheck")
		public void nickNameCheck() {
			
		}
		
		@RequestMapping(value="/")
		public String mainform() {
			return "index";
		}
}

