package com.seed.lib.info;

import java.time.LocalDate;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.search.SearchService;

@Controller
@RequestMapping("/info/*")
public class InfoController {
	
	@Autowired
	private SearchService searchService;
	

	@Value("${kakao.map.api.yr}")
	private String kakaoJavaKey;
	
//	@GetMapping("bookStatus")
//	public void getBookStat()throws Exception{
////		return "info/bookStatus";
//	}
	
	@GetMapping("bookStatus")
	public ModelAndView getBookStatus()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//현재 날짜..
		LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
        String formatedNow = now.format(formatter);
		mv.addObject("today", formatedNow);
		
		//카운트 세자
		ArrayList<Long> ar = new ArrayList<>();
		
		for(Long i=0L;i<10;i++) {
			Long d = searchService.getBookStatusEach(i);
			ar.add(d);
		}
		
		long total = searchService.getBookStatusTotal();
		
		mv.addObject("total", total);
		mv.addObject("ar", ar);
//		mv.setViewName("info/bookStatus"); //jsp랑 컨트롤러 주소가 같으면 셋뷰네임 생략해도 됨. 이걸이제알다니..
		return mv;
	}
	
//	@GetMapping("facilityStatus")
//	public String getFacilityStatus()throws Exception{
//		return "info/facilityStatus";
//	}
	
	@GetMapping("organization")
	public String getOrganization()throws Exception{
		return "info/organization";
	}
	
	@GetMapping("law")
	public String getLaw()throws Exception{
		return "info/law";
	}
	

	@GetMapping("map")
	public ModelAndView getMap()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("key", kakaoJavaKey);
		mv.setViewName("info/map");
		return mv;
	}

}
