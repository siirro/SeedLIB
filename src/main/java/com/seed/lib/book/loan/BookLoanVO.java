package com.seed.lib.book.loan;

import java.sql.Date;
import java.util.List;

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
	private int rtStatus;
	private int extension;
	
	private List<BookMutualLoanVO> muVOs;
	private List<BookReservationVO> reVOs;
	
}
