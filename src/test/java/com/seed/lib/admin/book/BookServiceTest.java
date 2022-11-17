package com.seed.lib.admin.book;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.seed.lib.book.BookVO;

@SpringBootTest
class BookServiceTest {

	@Autowired
	private BookVO bookVO;
	
	@Autowired
	private BookService bookService;
	
	@Test
	void setBookAddtest() {
		bookVO.setIsbn(1L);
		bookVO.setTitle("title");
		bookVO.setWriter("writer");
		
	}

}
