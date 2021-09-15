package com.company.mypage.member.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.mypage.member.service.MemberService;
import com.company.mypage.member.vo.MemberVo;

@Controller
public class MemberController {
		@Autowired
		MemberService memberService;

		//회원가입 폼 가기
		@RequestMapping(value="member/joinForm", method = RequestMethod.GET)
		public String joinForm() {
			return "/member/joinForm";
		}
		
		//회원가입
		@RequestMapping(value="member/joinMember", method = RequestMethod.POST)
		public String joinMember(MemberVo member) throws Exception {
			int result = memberService.emailCheck(member);
			try {
				if(result == 1) {
					return "member/joinMember";
				} else if(result == 0) {
					memberService.insertMember(member);
				}
			} catch(Exception e) {
				throw new RuntimeException();
			}
			return "redirect:/";
		}
		
		//이메일 체크
		@ResponseBody
		@RequestMapping(value="member/emailCheck", method = RequestMethod.POST)
		public int emailCheck(MemberVo member) throws Exception {
			int  result = memberService.emailCheck(member);
			return result;
		}
		
		//닉네임 체크
		@RequestMapping(value="member/nickNameCheck", method = RequestMethod.POST)
		public int nickNameCheck(MemberVo member) throws Exception {
			int result = memberService.nickNameCheck(member);
			return result;
			
		}
		
		//로그인 폼 가기
		@RequestMapping(value="member/loginForm", method = RequestMethod.GET)
		public String loginForm() {
			return "/member/loginForm";
		}
		
		//로그인
		@RequestMapping(value="member/loginForm", method = RequestMethod.POST)
		public String login(MemberVo member, HttpServletRequest req, RedirectAttributes rttr)
			throws Exception {
			
			HttpSession session = req.getSession();
			MemberVo login = memberService.selectLogin(member);
				
			System.out.println("member >>>> " + login);
			if(login == null) {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", false);
			} else {
				session.setAttribute("member", login);
				
			}
			
			return "redirect:/";
		}
		
		//로그아웃
		@RequestMapping(value="/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) throws Exception {
			
			session.invalidate();
			
			return "redirect:/";
		}
		
		// 메인화면
		@RequestMapping(value = "/")
		public String mainform() {
			return "index";
		}
		
}

