package com.seed.lib.admin.program;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class AdProgramVO {

	// 행사번호
	private Long proNum;
	// 행사구분
	private String proCate;
	// 접수상태
	private String recStatus;
	// 행사제목
	private String proTitle;
	// 행사내용
	private String proContents;
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
	//@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date psDate;
	// 행사끝나는시간
	//@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date plDate;
	// 강사
	private String proTeacher;
	// 장소
	private String proPlace;
	
	private String psDt;
	
	private String plDt;
	
	private String psTime;
	
	private String plTime;
	
	
	public void makeDate() {
		this.psDt = psDt+" "+psTime;
		this.plDt = plDt+" "+plTime;
	}
}
