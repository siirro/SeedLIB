package com.seed.lib.book;

import java.awt.print.Book;
import java.io.Console;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.like.BookLikeService;
import com.seed.lib.book.like.MbBookLikeVO;
import com.seed.lib.book.loan.BookLoanService;
import com.seed.lib.book.loan.BookLoanVO;
import com.seed.lib.book.loan.BookMutualLoanVO;
import com.seed.lib.book.loan.BookReservationVO;
import com.seed.lib.book.loan.MyReturnVO;
import com.seed.lib.book.shelf.BookShelfService;
import com.seed.lib.book.shelf.BookShelfVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.mypage.MypageService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/book/*")
public class BookController {
	
	@Value("${print.imp.key}")
	private String printImpkey;
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private BookLikeService bookLikeService;
	
	@Autowired
	private BookShelfService bookShelfService;
	
	@Autowired
	private BookLoanService loanService;
	
	@Autowired
	private MypageService mypageService;
	
	//도서 디테일
	@GetMapping("detail")
	public ModelAndView getDetail (BookVO bookVO, MemberVO memberVO, HttpSession session) throws Exception{
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
		ModelAndView mv = new ModelAndView();
		if(context != null) {
			Authentication authentication = context.getAuthentication();
			memberVO  = (MemberVO)authentication.getPrincipal();
			memberVO = mypageService.getMyPage(memberVO);
			
			
			// 비어있지 않다면 모델앤뷰에 넣기
			if(memberVO != null) {
				mv.addObject("member", memberVO);
				
				//유저 개인 좋아요 정보
				MbBookLikeVO bookLikeVO = new MbBookLikeVO();
				bookLikeVO.setUserName(memberVO.getUsername());
				bookLikeVO.setIsbn(bookVO.getIsbn());
				
				boolean isLikeExist = bookLikeService.getLikeExist(bookLikeVO);
				mv.addObject("isLikeExist", isLikeExist);
				
				//책꽂이 존재 유무
				BookShelfVO shelfVO = new BookShelfVO();
				shelfVO.setUserName(memberVO.getUsername());
				
				boolean isShelfExist = bookShelfService.getShelfExist(shelfVO);
				mv.addObject("isShelfExist", isShelfExist);
			}
			
		}
		
		//도서 상세정보
		bookVO = bookService.getBookInfo(bookVO);
		mv.addObject("bookVO", bookVO);
		
		//도서관 보유 정보
		bookVO = bookService.getLibDetail(bookVO);
		mv.addObject("lib", bookVO);
		
		//반납일
		Date date = loanService.getRtDate(bookVO.getIsbn());
		mv.addObject("rtDate", date);
		
		//책 좋아요 총갯수
		int bookLike = bookLikeService.getBookLike(bookVO);
		mv.addObject("like", bookLike);
		
		//같은 장르 도서
		List<BookVO> li = bookService.getSameCate(bookService.getBookInfo(bookVO).getCategory());
		mv.addObject("cate", li);
		
		//같은 작가 도서
		li = bookService.getSameWriter(bookService.getBookInfo(bookVO).getWriter());
		mv.addObject("wri", li);
		
		// 프린트 결제 키
		mv.addObject("imp", printImpkey);
		
		mv.setViewName("book/detail");
		
		return mv;
	}

	

//-------------------------------------------------------------------------------
	//대출 신청
	@ResponseBody
	@PostMapping("loan")
	public int setLoanAdd (@RequestBody BookLoanVO loVO) throws Exception {
		//result 값은 loanMapper 값 or 2 리턴
		int result = loanService.setLoan(loVO);
		return result;
	}
		
		
	//예약 신청
	@ResponseBody
	@PostMapping("reservation")
	public int setReservationAdd (@RequestBody BookReservationVO reVO) throws Exception {
		int result = loanService.setReservation(reVO);
		//대출 신청한 다음은 1 리턴
		return result;
	}
	
	//예약 신청
	@ResponseBody
	@PostMapping("reDelete")
	public int setReservationDelete (@RequestBody BookReservationVO reVO) throws Exception {
		int result = loanService.setReDelete(reVO);
		return result;
	}
	
	
	//상호대차 신청
	@ResponseBody
	@PostMapping("mutual")
	public int setMutualAdd (@RequestBody BookLoanVO loVO) throws Exception {
		int result = loanService.setMutual(loVO);
		return result;
	}
	
	//연장 신청
	@ResponseBody
	@PostMapping("extension")
	public int setExtensionAdd (@RequestBody BookLoanVO loVO) throws Exception {
		int result = loanService.setExtension(loVO);
		return result;
	}	
	
	//반납
	@ResponseBody
	@PostMapping("return")
	public int setReturnAdd (@RequestBody MyReturnVO returnVO) throws Exception {
		int result = loanService.setReturn(returnVO);
		return result;
	}	
	
	
}
