package com.seed.lib.hope;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.member.MemberService;
import com.seed.lib.member.MemberVO;
import com.seed.lib.mypage.MypageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("hope")
@Slf4j
public class HopeController {
	
	@Value("${kakao.api.key}")
	private String apiKey;
	
	@Autowired
	private HopeService hopeService;
	
	@Autowired
	private MypageService mypageService; 
	
	@GetMapping("hopeInfo")
	public void hopeInfo() throws Exception{
		
	}

	@GetMapping("setHope")
	public ModelAndView setHope(HttpSession session, MemberVO memberVO)throws Exception{
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
	    Authentication authentication = context.getAuthentication();
	    memberVO  = (MemberVO)authentication.getPrincipal();
	    memberVO = mypageService.getMyPage(memberVO);
	    log.info("mvo:{}",memberVO);
	    ModelAndView mv = new ModelAndView();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("hope/setHope");
		return mv;
	}
	
	@GetMapping("searchHope")
	@ResponseBody
	public String searchHope(String result) throws Exception{
	return apiKey;
	
	}

	
	@PostMapping("bookCheck")
	@ResponseBody
	public int bookCheck(@RequestBody HopeVO hopeVO, Model data) throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("isbn", hopeVO.getIsbn());
		map.put("libNum", hopeVO.getLibVO().getLibNum());
		//1차 체크
		int result = hopeService.getHaveBook(map);
		String message = "";
		if(result<1) {	
			//2차 체크
			result = hopeService.getOverLapBook(map);
			if(result<1) {
				//3차 체크
				result= hopeService.getMonth(hopeVO);
				if(result<3) {
					result=200;					
				}else {
					result = 333;
				}
			}else {
				result = 222;
			}
		}else {
			result=111;
		}		
		return result;
	}
	
	@PostMapping("setHope")
	@ResponseBody
	public int setHope(@RequestBody HopeVO hopeVO)throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("isbn", hopeVO.getIsbn());
		map.put("libNum", hopeVO.getLibVO().getLibNum());
		hopeVO.setIsbn(Long.parseLong(hopeVO.getIsbn().toString()));
		int result = hopeService.setHope(hopeVO, map);
		return result;
	}
	
	
}
