package com.seed.lib.admin.program;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class ProgramVO {

	private Long proNum;
	private String proName;
	private Long total;
	private Date prsDate;
	private Date prlDate;
	private Timestamp psDate;
	private Timestamp plDate;
	private String target;
	private String proTeacher;
	private String proPlace;
	private String proCate;
	
}
