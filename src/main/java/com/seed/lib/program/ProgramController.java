package com.seed.lib.program;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.admin.program.AdProgramVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.mypage.MypageService;
import com.seed.lib.util.ProgramPager;

@Controller
@RequestMapping("/program/*")
public class ProgramController {
	
	@Autowired
	private ProgramService programService;
	
	@Autowired
	private MypageService mypageService;
	
	//목록
	@GetMapping("list")
	public ModelAndView getList (ProgramPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<AdProgramVO> li = programService.getList(pager);
		mv.addObject("li", li);
		return mv;
	}
	
	
	//상세페이지
	@GetMapping("detail")
	public ModelAndView getDetail (HttpSession session, MemberVO memberVO, AdProgramVO apVO) throws Exception{
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
	    Authentication authentication = context.getAuthentication();
	    memberVO  = (MemberVO)authentication.getPrincipal();
	    memberVO = mypageService.getMyPage(memberVO);
		
		ModelAndView mv = new ModelAndView();
		
		if(memberVO != null) {
			mv.addObject("member", memberVO);
			
			//신청 여부
			//getMyState / getMyCount
			MemberProgramVO mpVO = new MemberProgramVO();
			mpVO.setUserName(memberVO.getUserName());
			mpVO.setProNum(apVO.getProNum());
			
		}
		
		apVO = programService.getDetail(apVO);
		mv.addObject("vo", apVO);
		
		return mv;
	}
	
	//프로그램 신청하기
	@ResponseBody
	@PostMapping("add")
	public int setAdd (@RequestBody MemberProgramVO mpVO) throws Exception{
		int result = programService.setAdd(mpVO);
		return result;
	}
	

	//신청취소
	@ResponseBody
	@PostMapping("delete")
	public int setDel (@RequestBody MemberProgramVO mpVO) throws Exception{
		int result = programService.setAdd(mpVO);
		return result;
	}
	

}
