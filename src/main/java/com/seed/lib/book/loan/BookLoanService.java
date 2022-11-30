package com.seed.lib.book.loan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.BookLoanPager;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class BookLoanService {
	
	@Autowired
	private BookLoanMapper loanMapper;
	
		//연체일도 체크해야 함
	//대출 신청
	public int setLoan (BookLoanVO loVO) throws Exception{
		// 1이면 해당 도서 대출 중 -> 새로 대출신청 불가
		// 0이면 대출 가능 -> setLoan -> 저장 후 1 리턴
		// 2이면 해당 도서 대출 중 -> 불가
		int enable = loanMapper.getBookLoan(loVO);
		if(enable == 0) {
			return loanMapper.setLoan(loVO);
		}else {
			return 2;
		}
	}
	
	//목록
	public List<BookVO> getLoanList (BookLoanPager pager) throws Exception{
		Long totalCount = loanMapper.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return loanMapper.getLoanList(pager);
	}
	
	//대출 연장 - 최대 2번
	public int setExtension (BookLoanVO loVO) throws Exception{
		// 연장 횟수가 0, 1일때만 신청 가능 -> setExtension -> 저장 후 +1 리턴
		// 2이면 불가능 -> 3 리턴
		int count = loanMapper.getExCount(loVO);
		if(count < 2) {
			return loanMapper.setExtension(loVO);
		}else {
			return 3;
		}
	}

//-----------------------------------------------------------------------	
	
	//예약 후 대출로 변경되는 날 계산
	public int setEnableDate (BookReservationVO reVO) throws Exception{
		return loanMapper.setEnableDate(reVO);
	}
	
	//예약 신청
	public int setReservation (BookReservationVO reVO) throws Exception{
		BookLoanVO loVO = new BookLoanVO();
		// 1이면 해당 도서 대출 중 -> 예약 불가
		// 0이면 예약 가능 -> setReservation -> 저장 후 1 리턴
		// 2이면 해당 도서 예약 중 -> 불가
		int enable = loanMapper.getBookLoan(loVO);
		if(enable == 0) {
			return loanMapper.setLoan(loVO);
		}else {
			return 2;
		}
	}
	
	//목록
	public List<BookVO> getReList (BookLoanPager pager) throws Exception{
		Long totalCount = loanMapper.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return loanMapper.getReList(pager);
	}

//-----------------------------------------------------------------------	
	
	//상호대차
	public int setMutual (BookMutualLoanVO muVO) throws Exception{
		BookLoanVO loVO = new BookLoanVO();
		// 1이면 해당 도서 대출 중 -> 새로 대출신청 불가
		// 0이면 대출 가능 -> setMutual -> 저장 후 1 리턴
		// 2이면 해당 도서 대출 중 -> 불가
		int enable = loanMapper.getBookLoan(loVO);
		if(enable == 0) {
			return loanMapper.setLoan(loVO);
		}else {
			return 2;
		}
	}
	
	//목록
	public List<BookVO> getMuList (BookLoanPager pager) throws Exception{
		Long totalCount = loanMapper.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return loanMapper.getMuList(pager);
	}
	
//-----------------------------------------------------------------------		
	public Long getCount (BookLoanPager pager) throws Exception{
		return loanMapper.getCount(pager);
	}

}
