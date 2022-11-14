package com.seed.lib.hope;

import java.sql.Date;

import lombok.Data;

@Data
public class HopeVO {

	private Integer hNum;
	private String hLib;
	private String hTitle;
	private String hWriter;
	private String hPublisher;
	private String userName;
	private String hMemo;
	private Date hDate;
	private int hStat;
	
}
