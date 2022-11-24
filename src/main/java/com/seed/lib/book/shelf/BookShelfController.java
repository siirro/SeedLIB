package com.seed.lib.book.shelf;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.util.ShelfPager;

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
		//shelf/newshelf?userName=
	@GetMapping("newshelf")
	public String setShelfAdd (BookShelfVO shelfVO) throws Exception {
		return "book/shelf/newshelf";
	}
	
	@PostMapping("newshelf")
	public ModelAndView setShelfAdd (HttpSession session, BookShelfVO shelfVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//사용자 정보
		MemberVO memberDTO = (MemberVO)session.getAttribute("member");
		mv.addObject("member", memberDTO);
		
		//새로운 책꽂이 정보
		int result = bookShelfService.setShelfAdd(shelfVO);
		mv.setViewName("book/shelf/newshelf");
		return mv;
	}
		
	
	//책꽂이 삭제
		//마이페이지 - 책꽂이 상세페이지 - 삭제버튼
		//shelf/deleteShelf?shNum=
	@PostMapping("deleteShelf")
	public String setShelfDelete (Long num) throws Exception{
		BookShelfVO bookShelfVO = new BookShelfVO();
		bookShelfVO.setShNum(bookShelfVO.getShNum());
		//삭제 완료 팝업창
		return "redirect:./list";
	}
	
	
	//책꽂이 수정
		//마이페이지 - 책꽂이 상세페이지 - 수정
		//shelf/updateShelf?shNum=
	@PostMapping("updateShelf")
	public String setShelfUpdate (BookShelfVO shelfVO) throws Exception{
		BookShelfVO bookShelfVO = new BookShelfVO();
		bookShelfVO.setShName(bookShelfVO.getShName());
		bookShelfVO.setShMemo(bookShelfVO.getShMemo());
		return "redirect:./list";
	}
	
	
	//책꽂이에 책 저장하기 버튼 눌렀을 떄
		//책꽂이 목록 불러와서 책 저장하기
		//shelf/addBook?isbn= &userName=
	@GetMapping("addBook")
	public String setBookAdd (BookPickVO pickVO) throws Exception {
		
		return "book/shelf/addBook";
	}
	
	@PostMapping("addBook")
	public ModelAndView setBookAdd (HttpSession session, BookPickVO pickVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//사용자 정보
		MemberVO memberDTO = (MemberVO)session.getAttribute("member");
		mv.addObject("member", memberDTO);
		
		//책꽂이 목록
		BookShelfVO shelfVO = new BookShelfVO();
		List<BookShelfVO> ar = bookShelfService.getShelfList(shelfVO);
		mv.addObject("list", ar);
		
		//추가할 책
		int result = bookShelfService.setBookAdd(pickVO);
		mv.addObject("result", result);
		
		mv.setViewName("book/shelf/list");
		return mv;
	}
	
	
	//책꽂이에서 책 삭제
		//마이페이지 - 책꽂이 상세페이지 - 선택 삭제 버튼
	@PostMapping("deleteBook")
	public ModelAndView setBookDelete (Long num) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//책꽂이 번호
		BookPickVO pickVO = new BookPickVO();
		pickVO.setShNum(num);
		int result = bookShelfService.setBookDelete(pickVO);
		
		//삭제 성공 팝업, 책꽂이 상세페이지로 돌아감 
		mv.setViewName("shelf/bookList?shNum="+result);
		return mv;
	}
	
	
	//책꽂이 상세(책꽂이에 저장된 책 목록)
		//shelf/bookList?shNum=
	@PostMapping("bookList")
	public ModelAndView getBookList (Long num, HttpSession session, ShelfPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//사용자 정보
		MemberVO memberDTO = (MemberVO)session.getAttribute("member");
		mv.addObject("member", memberDTO);
		
		//책 리스트
		List<BookVO> ar = bookShelfService.getBookList(pager);
		mv.addObject("list", ar);
		
		mv.addObject("pager", pager);
		mv.setViewName("shelf/bookList");
		return mv;
	}
}
