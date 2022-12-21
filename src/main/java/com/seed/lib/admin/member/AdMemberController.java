package com.seed.lib.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.member.MemberVO;
import com.seed.lib.util.HdPager;

@Controller
@RequestMapping("/admin/member/*")
public class AdMemberController {

	@Autowired
	private AdMemberService adMemberService;
	
	// 어드민 회원정보 목록
	@GetMapping("adMemberList")
	public ModelAndView getAdMemberList(HdPager hdPager)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<MemberVO> memberVOs = adMemberService.getAdMemberList(hdPager);
		
		// 회원 정보를 담고있는 List를 보냄
		mv.addObject("memberList", memberVOs);
		// 페이징 처리할 변수들을 보냄
		mv.addObject("pager", hdPager);
		mv.setViewName("admin/member/adMemberList");
		
		return mv;
	}
	
	@PostMapping("locked")
	public ModelAndView setLocked(MemberVO memberVO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		int result = adMemberService.setLocked(memberVO);
		
		String title="실패..";
		String text="계정 잠금이 실패 했습니다..";
		String icon="error";
		String url="./member/adMemberList";
		if(result > 0) {
			title="성공!!";
			text="계정 잠금에 성공 했습니다!!";
			icon="success";
			url="./member/adMemberList";
		}
		
		mv.addObject("icon", icon);
		mv.addObject("title", title);
		mv.addObject("text", text);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		return mv;
	}
	
}
