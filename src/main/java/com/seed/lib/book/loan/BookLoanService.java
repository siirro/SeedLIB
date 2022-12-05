package com.seed.lib.book.loan;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookLibVO;
import com.seed.lib.book.BookVO;
import com.seed.lib.util.BookLoanPager;
import com.seed.lib.util.DateUtil;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class BookLoanService {
	
	@Autowired
	private BookLoanMapper loanMapper;
	@Autowired
	private DateUtil dateUtil;
	
	//대출, 반납하면 도서관이 보유하고 있는 권수 update
		public BookLibVO setQuanUpdate (BookLibVO libVO) throws Exception{
			// bookCount +1 / -1해서 받아오기
			
			BookLoanVO loVO = new BookLoanVO();
			//대출 성공했을 떄 -> 0 -> 저장 후 1
			int result = loanMapper.setLoan(loVO);
			if (result == 1) {
				return loanMapper.setQuanUpdate(libVO);			
			}else {
				return null;
			}
		}
	
	//보유 권수가 0일때 able 0으로 update
	//보유 권수 1일때 able 1로 update
	public BookVO setAbleUpdate (BookLibVO libVO) throws Exception{
		//책 보유 권수에 따라 able update
		int count = loanMapper.getQuan(libVO);
			//1권 이상이면 대출 가능 -> able = 1
		if(count >= 1) {
			return loanMapper.setAbleUpdate(libVO);						
			//0권이면 대출 불가 -> able = 0
		}else {
			return loanMapper.setAbleUpdate(libVO);	
		}
	}
	
	//대출하면 책의 대출 횟수 update
	public BookVO setCountUpdate (BookVO bookVO) throws Exception{
		return loanMapper.setCountUpdate(bookVO);
	}
	
//----------------------------------------------------------------------	
	
		//연체일도 체크해야 함
	//대출 신청
	public int setLoan (BookLoanVO loVO) throws Exception{
		// 0이면 대출 가능 -> setLoan -> 저장 후 1 리턴
		// 2이면 해당 도서 대출 중 -> 불가
		int enable = loanMapper.getBookLoan(loVO);
		if(enable == 0) {
			return loanMapper.setLoan(loVO);
		}else {
			return 2;
		}
	}
	
	//반납날짜 계산
	public Calendar getRtDate (Long LoanLDate) throws Exception{
		java.util.Date now = new java.util.Date();
		
		//날짜 타입 설정
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		//현재 시간 설정
		Calendar ca = Calendar.getInstance();
		ca.setTime(now);
		
		// 14일 더하기
		ca.add(Calendar.DATE, 14);
		return ca;
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
	
	//대출한 책 권수
	public int getLoanCount (String userName, int rtStatus) throws Exception{
		return loanMapper.getLoanCount(userName, rtStatus);
	}

//-----------------------------------------------------------------------	
	
	//예약 후 대출로 변경되는 날 계산
	public int setEnableDate (BookReservationVO reVO) throws Exception{
		return loanMapper.setEnableDate(reVO);
	}
	
	//예약 신청
	public int setReservation (BookLoanVO loVO) throws Exception{
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
	
	//대출한 책 권수
	public int getReCount (String userName) throws Exception{
		return loanMapper.getReCount(userName);
	}

//-----------------------------------------------------------------------	
	
	//상호대차
	public int setMutual (BookLoanVO loVO) throws Exception{
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
	
	//상호대차한 책 권수
	public int getMuCount (String userName) throws Exception{
		return loanMapper.getMuCount(userName);
	}
	
//-----------------------------------------------------------------------		
	public Long getCount (BookLoanPager pager) throws Exception{
		return loanMapper.getCount(pager);
	}

}
