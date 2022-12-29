package com.seed.lib.guide;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.admin.calendar.AdminCalendarService;
import com.seed.lib.admin.calendar.AdminCalendarVO;
import com.seed.lib.util.FullCalendarVO;

@Controller
@RequestMapping("/guide/*")
public class GuideController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private AdminCalendarService calendarService;
	
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
	
	
	
	 @GetMapping("calendar") 
	 public ModelAndView getCalendar() throws Exception{
		 ModelAndView mv = new ModelAndView();
			List<FullCalendarVO> cl = new ArrayList<>();
			List<AdminCalendarVO> al = calendarService.getSchedule();
			JSONArray js = new JSONArray();
			for(AdminCalendarVO a: al) {
				FullCalendarVO calendarVO = new FullCalendarVO();
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("id", a.getId());
				jsonObject.put("title", a.getTitle());
				jsonObject.put("start", a.getStart());
				jsonObject.put("end", a.getEnd());
				//jsonObject.put("display", "background");
				js.add(jsonObject);
			}			
			mv.addObject("cl", js);		
			return mv;
		}

}
