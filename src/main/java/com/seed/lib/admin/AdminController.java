package com.seed.lib.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.member.MemberService;
import com.seed.lib.member.MemberVO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	@Autowired
	private MemberService memberService;
	
	// 기증도서 목록 조회
	@GetMapping("donaBoList")
	public String getDonaBoList()throws Exception{
		return "admin/donaBoList";
	}
	
	// 희망도서 목록 조회
	@GetMapping("hopeBoList")
	public String getHopeBoList()throws Exception{
		return "admin/hopeBoList";
	}
	
	// 어드민 로그아웃
	@GetMapping("adLogout")
	public String setAdLogout(HttpSession session)throws Exception{
		
		session.invalidate();
		
		return "redirect:../admin/main";
	}
		
	// 어드민 메인 페이지
	@GetMapping("main")
	public String getAdMain()throws Exception{
		return "admin/main";
	}
	
}