package com.seed.lib.util;

import java.sql.Date;

import lombok.Data;

@Data
public class FullCalendarVO {
	
	private String id;
	private String title;
	private String display;
	private Date start;
	private String classNames;
	private boolean allDay;
}
