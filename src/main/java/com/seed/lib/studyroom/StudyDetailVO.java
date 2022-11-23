package com.seed.lib.studyroom;

import java.sql.Date;

import lombok.Data;

@Data
public class StudyDetailVO {

	private Integer rvNum; 
	private int rvAble;
	private Integer seatNum;
	private Date rvDate;
	private String roomName;
	private String userName;	
	
	private StudyRoomVO roomVO;
}
