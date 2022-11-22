package com.seed.lib.book.shelf;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookVO;
import com.seed.lib.book.like.MbBookLikeVO;
import com.seed.lib.member.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shelf/*")
public class BookShelfController {
	
	@Autowired
	private BookShelfService bookShelfService;
	
	//책꽂이 목록
		//마이페이지, 새 책 저장시 옵션
	@PostMapping("list")
	public ModelAndView getShelfList (BookShelfVO shelfVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//사용자 정보
		MemberVO memberVO = new MemberVO();
		BookShelfVO bookShelfVO = new BookShelfVO();
		bookShelfVO.setUserName(memberVO.getUserName());
		
		//책꽂이 리스트
		List<BookShelfVO> ar = bookShelfService.getShelfList(bookShelfVO);
		mv.addObject("list", ar);
		
		return mv;
	}
		
	
	//새 책꽂이 생성
		//jsp : shelf/newshelf
	@PostMapping("newShelf")
	public ModelAndView setShelfAdd (BookShelfVO shelfVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//사용자 정보
		MemberVO memberVO = new MemberVO();
		BookShelfVO bookShelfVO = new BookShelfVO();
		bookShelfVO.setUserName(memberVO.getUserName());
		
		//책꽂이 리스트 - 이름 중복 검사용
		List<BookShelfVO> ar = bookShelfService.getShelfList(bookShelfVO);
		mv.addObject("list", ar);
		
		//새로운 책꽂이 정보
		bookShelfVO.setShName(bookShelfVO.getShName());
		bookShelfVO.setShMemo(bookShelfVO.getShMemo());
		return mv;
	}
		
	
	//책꽂이 삭제
		//마이페이지 - 책꽂이 상세페이지 - 삭제버튼
	@PostMapping("deleteShelf")
	public String setShelfDelete (Long num) throws Exception{
		return "redirect:./deleteShelf/result";
	}
	
	
	//책꽂이 수정
		//마이페이지 - 책꽂이 상세페이지 - 수정
	@PostMapping("updateShelf")
	public String setShelfUpdate (BookShelfVO shelfVO) throws Exception{
		
		return "redirect:./list";
	}
	
	
	//책꽂이에 책 저장
		//책꽂이 목록 불러와서 책 저장하기
		//jsp : shelf/addBook
	public BookVO setBookAdd (BookVO bookVO) throws Exception;
	
	
	//책꽂이에서 책 삭제
		//마이페이지 - 책꽂이 상세페이지 - 선택 삭제 버튼
	public BookVO setBookDelete (BookVO bookVO) throws Exception{
		
	}
	
	
	//책꽂이에 저장된 책 목록
	public BookVO getBookList (BookVO bookVO) throws Exception{
		ModelAndView mv = new m
		
		//사용자 정보
		MemberVO memberVO = new MemberVO();
		BookShelfVO bookShelfVO = new BookShelfVO();
		bookShelfVO.setUserName(memberVO.getUserName());
		
		//책 리스트
		List<BookVO> ar = bookShelfService.getBookList(bookVO);
		mv
	}
}
