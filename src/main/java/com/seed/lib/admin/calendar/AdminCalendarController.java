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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.studyroom.StudyDetailVO;
import com.seed.lib.util.FullCalendarVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("admin/calendar/*")
@Slf4j
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
			jsonObject.put("start", a.getStart()+" 10:00:00");
			jsonObject.put("end", a.getEnd()+" 24:00:00");
			//jsonObject.put("display", "background");
			js.add(jsonObject);
		}			
		mv.addObject("cl", js);		
		return mv;
	}
	
	@PostMapping("addEvent")
	@ResponseBody
	public int setSchedule (String title, String start, String end) throws Exception{
		AdminCalendarVO calendarVO = new AdminCalendarVO();
		calendarVO.setTitle(title);
		calendarVO.setStart(start);
		calendarVO.setEnd(end);
		log.info("calendar:{}", calendarVO);
		return calendarService.setSchedule(calendarVO);
	}
}
