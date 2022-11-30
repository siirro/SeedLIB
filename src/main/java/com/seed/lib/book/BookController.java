package com.seed.lib.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.like.BookLikeService;
import com.seed.lib.book.like.MbBookLikeVO;
import com.seed.lib.member.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/book/*")
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private BookLikeService bookLikeService;
	
	//도서 디테일
	@GetMapping("detail")
	public ModelAndView getDetail (BookVO bookVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//도서 정보
		List<BookVO> vo = bookService.getDetail(bookVO);
		
		//도서 하나 상세정보
		bookVO = bookService.getBookInfo(bookVO);
		mv.addObject("bookVO", bookVO);
		
		mv.addObject("vo", vo);
		
		//유저 개인 좋아요 정보
		MbBookLikeVO bookLikeVO = new MbBookLikeVO();
		//유저 정보
		MemberVO memberVO = new MemberVO();
		bookLikeVO.setIsbn(bookVO.getIsbn());
		bookLikeVO.setUserName(memberVO.getUserName());
		
		boolean isLikeExist = bookLikeService.getLikeExist(bookLikeVO);
		mv.addObject("isLikeExist", isLikeExist);
		
		//책 좋아요 총갯수
		int bookLike = bookLikeService.getBookLike(bookVO);
		mv.addObject("like", bookLike);
		
		mv.setViewName("book/detail");
		
		return mv;
	}
	

}
