package com.seed.lib.member;

import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ModelAndViewMethodReturnValueHandler;

import kotlin.jvm.Throws;
import lombok.extern.slf4j.Slf4j;
import retrofit2.http.POST;

@Controller
@Slf4j
@RequestMapping("/member/*")
public class MemberController {
	
	
	@Autowired
	private MemberService memberService;
	
	
//	@GetMapping("idCheck")
//	@ResponseBody
//	public ModelAndView getIdCheck(@ModelAttribute MemberVO memberVO, HttpSession session)throws Exception {
//	
//		log.info("login 성공");
//		memberVO= memberService.getLogin(memberVO);
//		ModelAndView mv =new ModelAndView();
//		
//		session.setAttribute("member", memberVO);
//
//		return mv;
//	}	
	
	//로그인 팝업용
	@GetMapping("loginPop")
	public void getLoginPop() throws Exception{
		//#LoginBtn을 누르면 로그인 팝업창이 뜸
		//대출 등 서비스 이용때 사용
		//Ajax는 bookDetail.js에 있어요
	}
	
	
	@GetMapping("login")
	public void getLogin(@RequestParam(defaultValue = "false", required = false) boolean error, String message, Model model) throws Exception{
	if(error){
		model.addAttribute("meg","ID와 PW를 확인해 주세요.");
	}
		
	}
	
	@PostMapping("login")
	public String getLogin()throws Exception{
		return "member/login";
				
	}	
	
//	@PostMapping("login")
//	public ModelAndView getLogin(MemberVO memberVO, HttpSession session, HttpServletRequest request) throws Exception{
//		ModelAndView mv =new ModelAndView();
//		memberVO= memberService.getLogin(memberVO);
//		if(memberVO!=null) {
//			session.setAttribute("memberVO", memberVO);
//			String dest = (String)session.getAttribute("dest");
//        	String uri = (dest == null) ? "index":dest;
//			mv.addObject("memberVO", memberVO);
//			mv.setViewName(uri);
////			mv.setViewName("redirect:../");
//		}else {
//	         mv.setViewName("redirect:../member/login");   
//
//		}
//		
//	      return mv;
//	}
	 

	
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
	public String agree() throws Exception{
				
		return "member/agree";
		
	}
	
	@GetMapping("agreeCheck")
	@ResponseBody
	public String agreeCheck(String allCheck) throws Exception{
		log.info("all:{}",allCheck);
			String mv = "";
		if(allCheck != null) {
					mv = "./join";
				} else {
					mv = "./agree";
				}
		return mv;	
	}

	@GetMapping("delete")
	@ResponseBody
	public ModelAndView setdelete(MemberVO memberVO) throws Exception{
		ModelAndView mv =new ModelAndView();
		int result = memberService.setDelete(memberVO);
		mv.setViewName("redirect:../");
		
		return mv;
		
		
	}
	
//	@GetMapping("logout")
//	public String getLogout(HttpSession session)throws Exception{
//		session.invalidate();
//		
//		return "redirect:../";
//	}


	
}
	