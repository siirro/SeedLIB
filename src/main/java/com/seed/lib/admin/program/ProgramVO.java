package com.seed.lib.admin.program;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ProgramVO {

	// 행사번호
	private Long proNum;
	// 행사구분
	private String proCate;
	// 접수상태
	private Long recStatus;
	// 행사이름
	private String proName;
	// 대상자
	private String target;
	// 정원
	private Long total;
	// 접수시작날짜
	private Date prsDate;
	// 접수마감날짜
	private Date prlDate;
	// 행사시작시간
	// 출력할때 시간 빼는 작업이 필요!! jstl format 라이브러리 쓰기!!
	private Date psDate;
	// 행사끝나는시간
	private Date plDate;
	// 강사
	private String proTeacher;
	// 장소
	private String proPlace;
	
}
