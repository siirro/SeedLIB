package com.seed.lib.member;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("login")
	public void getLogin() throws Exception{
				
	}
	
	@PostMapping("login")
	public String getLogin(MemberVO memberVO) throws Exception{
		
		return "";
		
	}
	 
	
	@GetMapping("logout")
	public String logout(HttpSession session)throws Exception{
		System.out.println("로그아웃 실행");
		session.invalidate();
		return "redirect: /";
	}
	
			
	@GetMapping("join")	
	public void setJoin() throws Exception{
			
		
	}
	
	
	@PostMapping("join")	
	public String setJoin(MemberVO memberVO) throws Exception{
				int result = memberService.setJoin(memberVO);
		
		return "Redirect:../";
	}


	
	@GetMapping("agree")
	public void agree() throws Exception{
		
	}


	
}
	