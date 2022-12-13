package com.seed.lib.studyroom;

import lombok.Data;

@Data
public class LockerCancelVO {

	private Integer refundNum;
	private Integer rentNum;
	private String reason;
	private Integer cancel_request_amount;
	
}
