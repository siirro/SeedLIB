package com.seed.lib.book.loan;

import java.sql.Date;

import lombok.Data;

@Data
public class BookLoanVO {

	private Long loanNum;
	private String userName;
	private Long isbn;
	private Date loanSDate;
	private Date loanLDate;
	private boolean overDue;
	//1은 대출 중 | 0은 반납
	private boolean rtStatus;
	private int extension;
	
}
