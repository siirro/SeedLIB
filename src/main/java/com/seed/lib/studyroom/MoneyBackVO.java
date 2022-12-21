package com.seed.lib.studyroom;

import java.sql.Date;

import lombok.Data;

@Data
public class MoneyBackVO {
	private Integer backNum;
	private int backPrice;
	private Date backDate;
	private Integer rentNum;
	private String merchant_uid;
}
