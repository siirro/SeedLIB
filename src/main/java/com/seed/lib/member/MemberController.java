package com.seed.lib.member;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		session.setAttribute("member", memberVO);
		
		return "redirect:../";
		
	}
	 

	
	@PostMapping("join")	
	public ModelAndView setJoin(MemberVO memberVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		log.info("조인조인조인");
		int result = memberService.setJoin(memberVO);

		mv.addObject("memberVO", memberVO);
		
		mv.setViewName("redirect:../");
		
		return mv;
	}

	
	
	@GetMapping("join")	
	public void setJoin() throws Exception{
		
	}
	
	
	@GetMapping("agree")
	@ResponseBody
	public String agree() throws Exception{
		
		log.info("agree 성공");
		
		return "member/agree";
		
	}

	@GetMapping("logout")
	public String getLogout(HttpSession session)throws Exception{
		log.info("==== 내가만든 logout 메서드=====");
		session.invalidate();
		
		return "redirect:../";
	}


	
}
	