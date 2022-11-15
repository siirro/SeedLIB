package com.seed.lib.hope;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("hope")
@Slf4j
public class HopeController {
	
	@Value("${kakao.api.key}")
	private String apiKey;
	
	@Autowired
	private HopeService hopeService;
	
	@GetMapping("hopeInfo")
	public void hopeInfo() throws Exception{
		
	}

	@GetMapping("setHope")
	public void setHope()throws Exception{
	}
	
	@GetMapping("searchHope")
	@ResponseBody
	public String searchHope(String result) throws Exception{
		return apiKey;
	}
	
	@PostMapping("setHope")
	public ModelAndView setHope(HopeVO hopeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String message = "";
		int result = hopeService.setHope(hopeVO);
		if(result>0) {
			message = "신청 완료";
			mv.addObject("message", message);
			mv.setViewName("../");
		} else {
			message = "신청 실패";
			mv.addObject("message", message);
			mv.setViewName("./");
		}		
		return mv;
	}
	
	@GetMapping("hopeList")
	public ModelAndView setHList(String userName)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<HopeVO> hl = hopeService.getHopeList(userName);
		mv.addObject("hl", hl);
		mv.setViewName("/mypage/hopeList");
		return mv;
	}
	
	@PostMapping("hopeDelete")
	@ResponseBody
	public ModelAndView setDeleteHope(HopeVO hopeVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = hopeService.setDeleteHope(hopeVO);
		String message = "";
		if(result>0) {
			message = "취소 완료";
			mv.addObject("message", message);
			mv.setViewName("/mypage/hopeList");
		} else {
			message = "취소 실패";
			mv.addObject("message", message);
			mv.setViewName("/mypage/hopeList");
		}		
		return mv;
	}
}
