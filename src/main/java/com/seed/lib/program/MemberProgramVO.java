package com.seed.lib.program;

import lombok.Data;

@Data
public class MemberProgramVO {
	
	private Long mpNum;
	private String userName;
	private Long proNum;
	//1 : 승인 | 0 : 미승인
	private Long ProCheck;
	//1:신청->승인 | 0:취소
	private Integer proState;

}
