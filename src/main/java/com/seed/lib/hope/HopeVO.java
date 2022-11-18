package com.seed.lib.hope;

import java.sql.Date;

import com.seed.lib.book.LibVO;
import com.seed.lib.util.StatusVO;

import lombok.Data;

@Data
public class HopeVO {
	private Integer hopNum;
	private String hopTitle;
	private String hopWriter;
	private String hopPublisher;
	private String userName;
	private String hopMemo;
	private Date hopDate;
	private int hopStat;
	private Long isbn;
	
	private StatusVO statusVO;
	private LibVO libVO;
}
