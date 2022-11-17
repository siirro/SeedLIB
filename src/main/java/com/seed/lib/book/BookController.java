package com.seed.lib.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/book/*")
public class BookController {
	
	@Autowired
	private BookService bookService;
	
	//도서 디테일
	@GetMapping("detail")
	public ModelAndView getDetail (BookVO bookVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> vo = bookService.getDetail(bookVO);
		mv.addObject("vo", vo);
		mv.setViewName("book/detail");
		
		return mv;
	}

}
