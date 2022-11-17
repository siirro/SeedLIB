package com.seed.lib.admin.book;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.seed.lib.book.BookVO;

@SpringBootTest
class AdminBookServiceTest {

	@Autowired
	private BookVO bookVO;
	
	@Autowired
	private AdminBookService adminBookService;
	
	@Test
	void setBookAddtest() {
		bookVO.setIsbn(1L);
		bookVO.setTitle("title");
		bookVO.setWriter("writer");
		bookVO.setPublisher("출판사");
		bookVO.setBookDate(2022L);
		bookVO.setCategory(000L);
		bookVO.setQuantity(1L);
		bookVO.setImage("이미지");
		bookVO.setBookC
		
	}

}
