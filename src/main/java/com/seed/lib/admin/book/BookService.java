package com.seed.lib.admin.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.book.BookVO;

@Service
public class BookService {

	@Autowired
	private BookMapperIF bookMapperIF;
	
	public int setBookAdd(BookVO bookVO)throws Exception{
		return bookMapperIF.setBookAdd(bookVO);
	}
	
}
