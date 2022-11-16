package com.seed.lib.admin.book;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/book/*")
public class BookController {

	@GetMapping("add2")
	public String setBookAdd()throws Exception{
		
		return "admin/book/add2";
	}
	
	@GetMapping("list")
	public String getBookList()throws Exception{
	
		return "admin/book/list";
	}
	
}
