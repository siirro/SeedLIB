package com.seed.lib.book.loan;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookLoanMapper {

	//대출+예약 가능한 회원인지? - 해당 도서 대출중 판단
	//대출 가능한 회원인지? - 연체일 기간 지났는지 판단
	
	//대출 신청
	public int setLoan (BookLoanVO loanVO) throws Exception;
	
	//예약 후 대출로 변경되는 날 계산
	//예약 신청
	public int setReservation (BookReservationVO reVO) throws Exception;
	
	//상호대차
}
