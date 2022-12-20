package com.seed.lib.book.loan;

import java.sql.Date;

import lombok.Data;

@Data
public class MyReturnVO {
	
	private Long rtNum;
	private Long loanNum;
	private Long isbn;
	//반납일
	private Date rtDate;

}
