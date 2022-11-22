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
	public ModelAndView getDetail (Long num, BookVO bookVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		//도서 정보
		List<BookVO> vo = bookService.getDetail(bookVO);
		mv.addObject("vo", vo);
		
		//좋아요 정보
		MbBookLikeVO bookLikeVO = new MbBookLikeVO();
		bookLikeVO.setIsbn(num);
		//유저 정보
		MemberVO memberVO = new MemberVO();
		bookLikeVO.setUserName(memberVO.getUserName());
		
		boolean isLikeExist = bookLikeService.getLikeExist(bookLikeVO);
		mv.addObject("isLikeExist", isLikeExist);
		
		mv.setViewName("book/detail");
		
		return mv;
	}
	

}
