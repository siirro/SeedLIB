package com.seed.lib.book.loan;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookLibVO;
import com.seed.lib.book.BookVO;
import com.seed.lib.util.BookLoanPager;

@Mapper
public interface BookLoanMapper {
	
	
	//보유 권수 계산
	public int getQuan (BookLibVO libVO) throws Exception;
	
	//대출하면 도서관이 보유하고 있는 권수 update
	public void setQuanUpdate (Long isbn, Long libNum) throws Exception;
	
	//대출하면 책의 대출 횟수 update
	public void setCountUpdate (Long isbn) throws Exception;
	
	//가장 빠른 반납날짜 불러오기
	public Date getRtDate (Long isbn) throws Exception;
	
//----------------------------------------------------------------------	

	//대출+예약 가능한 회원인지? - 해당 도서 대출중 판단
	public int getBookLoan (BookLoanVO loVO) throws Exception;
	
	//대출 가능한 회원인지? - 연체일 기간 지났는지 판단
	//public int getOverdue () throws Exception;
	
	//대출 신청 (인서트)
	public int setLoan (BookLoanVO loVO) throws Exception;
	
	//대출 목록 stStatus가 1이면 대출중 | 0이면 이력
	public List<BookVO> getLoanList (BookLoanPager pager) throws Exception;
	
	//대출 연장 신청 가능한 회원인지 - 2번 이하
	public int getExCount (BookLoanVO loVO) throws Exception;
	
	//대출 연장 - 최대 2번
	public int setExtension (BookLoanVO loVO) throws Exception;

//-----------------------------------------------------------------------	
	
	//예약 후 대출로 변경되는 날 계산
	public int setEnableDate (BookReservationVO reVO) throws Exception;
	
	//예약 신청
	public int setReservation (BookLoanVO loVO) throws Exception;
	
	//예약 목록
	public List<BookVO> getReList (BookLoanPager pager) throws Exception;
	
	//예약한 책 권수
	public int getReCount (BookLoanVO loVO) throws Exception;

//-----------------------------------------------------------------------	
	
	//상호대차
	public int setMutual (BookLoanVO loVO) throws Exception;
	
	//목록
	public List<BookVO> getMuList (BookLoanPager pager) throws Exception;
	
	//상호대출 책 권수
	public int getMuCount (BookLoanVO loVO) throws Exception;
	
//-----------------------------------------------------------------------	
	
	public Long getCount (BookLoanPager pager) throws Exception;
}
