package com.seed.lib.donation;

import java.sql.Date;

import lombok.Data;

@Data
public class DonationVO {

	private Integer dNum;
	private String dLib;
	private String dTitle;
	private String dWriter;
	private String dPublisher;
	private String userName;
	private String dMemo;
	private Date dDate;
	private int dStat;
}
