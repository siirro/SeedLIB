package com.seed.lib.studyroom;

import lombok.Data;

@Data
public class LockerCancelVO {

	private Integer refundNum;
	private String merchant_uid;
	private String reason;
	private Integer checksum;
	
}
