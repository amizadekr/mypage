package com.company.mypage.member.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.mypage.member.service.MemberService;
import com.company.mypage.member.vo.JoinVo;
import com.company.mypage.member.vo.LoginVo;
import com.company.mypage.member.vo.MemberVo;

@Controller
public class MemberController {
		@Autowired
		MemberService memberService;

		//회원가입 폼 가기
		@RequestMapping(value="/member/joinForm", method = RequestMethod.GET)
		public String joinForm() {
			return "/member/joinForm";
		}
		
		//회원가입
		@RequestMapping(value="/member/join", method = {RequestMethod.POST})
		public String joinMember(JoinVo member) throws Exception {
			memberService.insertMember(member);
			return "redirect:/";
		}
		
		//로그인 폼 가기
		@RequestMapping(value="member/loginForm", method = RequestMethod.GET)
		public String loginForm() {
			return "/member/loginForm";
		}
		
		//로그인
		@RequestMapping(value="member/loginForm", method=RequestMethod.POST)
		public String selectLogin(LoginVo member,HttpSession httpSession, Model model) 
				throws Exception {
			MemberVo mb = memberService.selectLogin(member);
			
			if(mb != null) {
				httpSession.setAttribute("memberVo", mb);
				model.addAttribute("memberVo", mb);
				return "redirect:/";
			} else {
				String msg = "없는 게정이거나 이메일 또는 비밀번호가 틀리셨습니다.";
				String loc = "/member/loginForm";
				model.addAttribute("msg", msg);
				model.addAttribute("loc", loc);
				return "common/msg";
			}	
		}

		//로그아웃
		@RequestMapping("?page=logout")
		public String logout(HttpSession session, Model model) {
			
			session.invalidate();
			
			String msg = "로그아웃 되었습니다";
			String loc = "redirect:/";
			model.addAttribute("msg", msg);
			model.addAttribute("loc", loc);
			return "common/msg";
			
		}	
		
		// 메인화면
		@RequestMapping(value = "/")
		public String mainform() {
			return "index";
		}
		
}

