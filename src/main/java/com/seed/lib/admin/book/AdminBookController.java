package com.seed.lib.admin.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookVO;

@Controller
@RequestMapping("/admin/book/*")
public class AdminBookController {
	
	@Autowired
	private AdminBookService adminBookService;
	
	@GetMapping("boList")
	public String getAdBookList()throws Exception{
		
		return "admin/book/boList";
	}
	
	@GetMapping("boAdd")
	public String setAdBookAdd()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
	 	List<BookVO> bookVOs = adminBookService.getAdBookList();
	 	
	 	mv.addObject("boList", bookVOs);
	 	
		return "admin/book/boAdd";
	}
	
}
