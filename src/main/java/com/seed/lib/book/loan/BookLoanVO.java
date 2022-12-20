package com.seed.lib.book.loan;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class BookLoanVO {

	private Long loanNum;
	private String userName;
	private Long isbn;
	
	//대출 시작일
	private Date loanSDate;
	//대출 종료일
	private Date loanLDate;
	//연체여부 bit - 1:연체O
	private int overDue;
	
	//1은 대출 중 | 0은 반납
	private int rtStatus;
	//연장횟수
	private int extension;
	
	private Long libNum;
	
	private List<BookMutualLoanVO> muVOs;
	private List<BookReservationVO> reVOs;
	private List<MyReturnVO> returnVO;
	
}
