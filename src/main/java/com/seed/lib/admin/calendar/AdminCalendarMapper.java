package com.seed.lib.admin.calendar;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminCalendarMapper {

	public List<AdminCalendarVO> getSchedule() throws Exception;
	public int setSchedule(AdminCalendarVO calendarVO) throws Exception;
}
