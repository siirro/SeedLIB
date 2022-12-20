package com.seed.lib.program;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	    org.springframework.security.core.Authentication authentication = context.getAuthentication();
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
			
			//카운트 0이면 신청 가능
			int count = programService.getMyCount(mpVO);
			//상태가 1이면 신청 불가 | 0이면 신청가능 버튼
			int state = programService.getMyState(mpVO);
			
			if(count == 0) {
				mv.addObject("can", 0);
			}else {
				if(state == 0) {
					mv.addObject("can", 0);
				}else {
					mv.addObject("can", 1);
				}
			}
		}
		
		apVO = programService.getDetail(apVO);
		mv.addObject("vo", apVO);
		
		return mv;
	}
	
	//프로그램 신청하기
	@ResponseBody
	@PostMapping("add")
	public int setAdd (MemberProgramVO mpVO) throws Exception{
		int result = programService.setAdd(mpVO);
		return result;
	}
	

	//신청취소
	@ResponseBody
	@PostMapping("delete")
	public int setDel (MemberProgramVO mpVO) throws Exception{
		int result = programService.setAdd(mpVO);
		return result;
	}
	

}
