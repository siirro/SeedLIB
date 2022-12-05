package com.seed.lib.studyroom;

import java.sql.Date;

import lombok.Data;

@Data
public class LockerVO {
	private String imp_uid; 
	private String merchant_uid;
	private Integer lockerNum;
	private Integer amount;
	private String stDate;
	private String enDate;
	private Integer rentDays;
	private int rentStat;
	private String userName;
	private int lockerLast;
}
