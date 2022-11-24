package com.seed.lib.book.shelf;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookService;
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
	
	@Autowired
	private BookService bookService;
	
	//책꽂이 목록
		//마이페이지, 새 책 저장시 옵션
		//shelf/list?userName=
	@GetMapping("list")
	public ModelAndView getShelfList (String userName) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		//책꽂이 리스트
		List<BookShelfVO> ar = bookShelfService.getShelfList(userName);
		mv.addObject("list", ar);
		mv.setViewName("shelf/list");
		
		return mv;
	}	
	
	//새 책꽂이 생성
		//shelf/newshelf?userName=
	@GetMapping("newShelf")
	public void setShelfAdd (BookShelfVO shelfVO) throws Exception{
		log.info("GET Shelf Add");
	}
	
	@PostMapping("newShelf")
	public ModelAndView setShelfAdd (HttpSession session, BookShelfVO shelfVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//사용자 정보
		MemberVO memberDTO = (MemberVO)session.getAttribute("member");
		mv.addObject("member", memberDTO);
		
		//새로운 책꽂이 정보
		int result = bookShelfService.setShelfAdd(shelfVO);
		mv.setViewName("shelf/newShelf");
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
	public ModelAndView setBookAdd (String userName, Long isbn) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("userName", userName);
		mv.addObject("isbn", isbn);
		
		String title = bookShelfService.getBookTitle(isbn);
		mv.addObject("title", title);
		log.info("title : {}", title);
		
		List<BookShelfVO> ar = bookShelfService.getShelfList(userName);
		mv.addObject("list", ar);
		
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
