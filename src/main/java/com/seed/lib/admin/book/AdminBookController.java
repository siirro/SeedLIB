package com.seed.lib.admin.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookVO;
import com.seed.lib.member.MemberVO;

@Controller
@RequestMapping("/admin/book/*")
public class AdminBookController {
	
	@Autowired
	private AdminBookService adminBookService;
	
	// 도서 목록 조회
	@GetMapping("boList")
	public ModelAndView getAdBookList()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> bookVOs = adminBookService.getAdBookList();
		
		if(bookVOs.size() != 0) {
			
			mv.addObject("list", bookVOs);
			
		}
		
		mv.setViewName("admin/book/boList");
		
		return mv;
	}
	
	// 도서 추가
	@GetMapping("boAdd")
	public String setAdBookAdd()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
	 	List<BookVO> bookVOs = adminBookService.getAdBookList();
	 	
	 	mv.addObject("boList", bookVOs);
	 	
		return "admin/book/boAdd";
	}
	
}
