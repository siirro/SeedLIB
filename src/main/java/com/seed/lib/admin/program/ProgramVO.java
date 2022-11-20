package com.seed.lib.admin.program;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ProgramVO {

	private Long proNum;
	private String proName;
	private Long total;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date prsDate;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date prlDate;
	// 출력할때 시간 빼는 작업이 필요!! jstl format 라이브러리 쓰기!!
	@DateTimeFormat(pattern = "yyyy-mm-dd hh:mm:ss")
	private Date psDate;
	@DateTimeFormat(pattern = "yyyy-mm-dd hh:mm:ss")
	private Date plDate;
	private String target;
	private String proTeacher;
	private String proPlace;
	private String proCate;
	
}
