package com.seed.lib.guide;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/guide/*")
public class GuideController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@GetMapping("manners")
	public String Manners() throws Exception{
		
		return"guide/manners";
	}
	
	@GetMapping("time")
	public String Time() throws Exception{
		return "guide/time";
	}

	
	@GetMapping("convenience")
	public String Convenience() throws Exception{
		return "guide/convenience";
	}

	
	@GetMapping("rule")
	public String Rule() throws Exception{
		return "guide/rule";
	}
	
	
	/*
	 * @GetMapping("calendar") public void getSeedSchedule(Model model,
	 * HttpServletRequest request, CalVO calVO) throws Exception{
	 * 
	 * Calendar cal = Calendar.getInstance(); CalVO calendarVO;
	 * 
	 * if(calVO.getDate())
	 * 
	 * }
	 */

}
