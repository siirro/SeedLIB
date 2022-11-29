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
	private String loanLib;
	private boolean overDue;
	private boolean rtStatus;
	
}
