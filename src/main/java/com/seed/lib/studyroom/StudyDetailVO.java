package com.seed.lib.studyroom;

import java.sql.Date;

import lombok.Data;

@Data
public class StudyDetailVO {

	private Integer rvNum; 
	private int rvAble;
	private Integer seatNum;
	private Date rvDate;
	private int roomNum;
	private String userName;	
	
	private StudyRoomVO roomVO;
}
