package com.seed.lib.admin.calendar;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.studyroom.StudyDetailVO;
import com.seed.lib.util.FullCalendarVO;

@Controller
@RequestMapping("admin/calendar/*")
public class AdminCalendarController {
	
	@Autowired
	private AdminCalendarService calendarService;

	@GetMapping("closed")
	public ModelAndView setClosedDaysFrm () throws Exception{
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
			jsonObject.put("display", "background");
			js.add(jsonObject);
		}			
		mv.addObject("cl", js);		
		return mv;
	}
	
	@PostMapping("closed")
	public void setClosedDays () throws Exception{
		
	}
}
