package com.seed.lib.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.donation.DonationService;
import com.seed.lib.donation.DonationVO;
import com.seed.lib.member.MemberService;
import com.seed.lib.member.MemberVO;
import com.seed.lib.util.HdPager;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private DonationService donationService;
	
	// 기증도서 목록 조회
	@GetMapping("donaBoList")
	public ModelAndView getDonaBoList(HdPager hdPager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<DonationVO> dl = donationService.getAdminDonList(hdPager);
		mv.addObject("don", dl);
		return mv;
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
	
	// 어드민 로그인 페이지
	@GetMapping("adLogin")
	public String getAdLogin()throws Exception{
		return "admin/adLogin";
	}
	
	// 어드민 로그인 포스트
	@PostMapping("adLogin")
	public ModelAndView getAdLogin(MemberVO memberVO, HttpSession session)throws Exception{
		
		
		ModelAndView mv = new ModelAndView();
		String title = "실패..";
		String text = "로그인을 실패했습니다!";
		String icon = "error";
		String button = "확인";
		String url = "./adLogin";
		
		memberVO = memberService.getLogin(memberVO);
		
		if(memberVO != null) {
			
			title = "성공!!";
			text = "로그인을 성공했습니다!";
			icon = "success";
			button = "확인";
			url="../admin/main";
			session.setAttribute("admin", memberVO);
			
		}
		
		mv.addObject("title", title);
		mv.addObject("text", text);
		mv.addObject("icon", icon);
		mv.addObject("button", button);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		return mv;
	}
	
	// 어드민 메인 페이지
	@GetMapping("main")
	public String getAdMain()throws Exception{
		return "admin/main";
	}
	
}