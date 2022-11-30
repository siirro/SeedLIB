package com.seed.lib.info;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/info/*")
public class InfoController {
	
	@GetMapping("bookStatus")
	public ModelAndView getBookStatus()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//현재 날짜..
		LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy.MM.dd");
        String formatedNow = now.format(formatter);
		mv.addObject("today", formatedNow);
		
		
		
		mv.setViewName("info/bookStatus");
		return mv;
	}
	
	@GetMapping("facilityStatus")
	public String getFacilityStatus()throws Exception{
		return "info/facilityStatus";
	}
	
	@GetMapping("organization")
	public String getOrganization()throws Exception{
		return "info/organization";
	}
	
	@GetMapping("law")
	public String getLaw()throws Exception{
		return "info/law";
	}
	
	@GetMapping("map")
	public String getMap()throws Exception{
		return "info/map";
	}

}
