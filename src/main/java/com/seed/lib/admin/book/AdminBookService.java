package com.seed.lib.admin.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.book.BookVO;

@Service
public class AdminBookService {

	@Autowired
	private AdminBookMapper adminBookMapper;
	
	public int setBookAdd(BookVO bookVO)throws Exception{
		return adminBookMapper.setBookAdd(bookVO);
	}
	
}
