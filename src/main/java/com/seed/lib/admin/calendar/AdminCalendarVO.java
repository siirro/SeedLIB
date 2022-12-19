package com.seed.lib.admin.calendar;

import java.sql.Date;

import lombok.Data;

@Data
public class AdminCalendarVO {
	
	private Long id;
	private String title;
	private String start;
	private String end;

}
