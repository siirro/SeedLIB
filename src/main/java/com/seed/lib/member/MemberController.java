package com.seed.lib.member;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member/*")
public class MemberController {
	
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("login")
	public void getLogin() throws Exception{
		log.info("get 진입");
				
	}
	
	@PostMapping("login")
	public String getLogin(MemberVO memberVO, HttpSession session) throws Exception{
		log.info("login 성공");
		memberVO= memberService.getLogin(memberVO);
		session.setAttribute("memberVO", memberVO);
		
		return "member/login";
		
	}
	 

	
	@PostMapping("join")	
	public ModelAndView setJoin(MemberVO memberVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		log.info("조인조인조인");
		int result = memberService.setJoin(memberVO);
		mv.addObject("memberVO", memberVO);
		
		mv.setViewName("member/join");
		
		return mv;
	}

	
	
	@GetMapping("join")	
	public void setJoin() throws Exception{
		
	}
	
	
	@GetMapping("agree")
	public String agree() throws Exception{
		
		log.info("agree 성공");
		
		return "member/agree";
		
	}


	
}
	