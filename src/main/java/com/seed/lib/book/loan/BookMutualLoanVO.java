package com.seed.lib.book.loan;

import java.sql.Date;

import lombok.Data;

@Data
public class BookMutualLoanVO {

	private Long muNum;
	private Long isbn;
	private String userName;
	private Date regDate;
	
	private Long libNum;
	
}
