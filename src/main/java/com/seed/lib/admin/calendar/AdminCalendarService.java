package com.seed.lib.admin.calendar;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminCalendarService {
	
	@Autowired
	private AdminCalendarMapper calendarMapper;
	
	public List<AdminCalendarVO> getSchedule() throws Exception{
		return calendarMapper.getSchedule();
	}

}
