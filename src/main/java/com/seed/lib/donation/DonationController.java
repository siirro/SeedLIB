package com.seed.lib.donation;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.member.MemberVO;
import com.seed.lib.mypage.MypageService;


@Controller
@RequestMapping("donation")
public class DonationController {
	
	@Value("${kakao.api.key}")
	private String apiKey;

	@Autowired
	private DonationService donationService;
	
	@Autowired
	private MypageService mypageService;
	
	@GetMapping("donInfo")
	public void donInfo() throws Exception{
		
	}
	
	@PostMapping("donInfo")
	@ResponseBody
	public Map<String, String> donInfo(HttpSession session) throws Exception{
		Map<String, String> mv = new HashMap<>();
		if(session.getAttribute("memberVO")==null) {
			mv.put("msg", "로그인이 필요한 페이지입니다");
			mv.put("url","../member/login");
			return mv;
		} else {
			mv.put("msg", "도서 기증 신청 페이지로 이동합니다");
			mv.put("url","./setDon");
			return mv;
		}
	}

	@GetMapping("setDon")
	public ModelAndView setDon(HttpSession session, MemberVO memberVO)throws Exception{
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
	    Authentication authentication = context.getAuthentication();
	    memberVO  = (MemberVO)authentication.getPrincipal();
	    memberVO = mypageService.getMyPage(memberVO);
	    ModelAndView mv = new ModelAndView();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("donation/setDon");
		return mv;
	}
	
	@PostMapping("setDon")
	@ResponseBody
	public int setDon(@RequestBody DonationVO donationVO)throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("libNum", donationVO.getLibVO().getLibNum());
		int result = donationService.setDon(donationVO, map);
		return result;
	}
	
	@GetMapping("searchDon")
	@ResponseBody
	public String searchDon(String result) throws Exception{
	return apiKey;
	}
	
}
