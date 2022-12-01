package com.seed.lib.book.order;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.seed.lib.admin.book.BookPrintVO;

@SpringBootTest
class BoOrderServiceTest {

	@Autowired
	private BoOrderService boOrderService;
	
	//@Test
	void getBoCartListTest()throws Exception{
		
		BookPrintVO bookPrintVO = new BookPrintVO();
		bookPrintVO.setUserName("member");
		
		List<BookPrintVO> bookPrintVOs = boOrderService.getBoCartList(bookPrintVO);
		
		assertEquals(2,bookPrintVOs.size());
		
	}
	
	//@Test
	void setBoCartTest()throws Exception{
		
		BookPrintVO bookPrintVO = new BookPrintVO();
		bookPrintVO.setCaStPage(20L);
		bookPrintVO.setCaLsPage(40L);
		bookPrintVO.setCaTtPage(20L);
		bookPrintVO.setCaAmount(3000L);
		bookPrintVO.setUserName("member");
		bookPrintVO.setIsbn("9780062882059");
		
		int result = boOrderService.setBoCart(bookPrintVO);
		
		assertEquals(1, result);
		
	}
	
	//@Test
	void test()throws Exception {
		
		BoOrderVO boOrderVO = new BoOrderVO();
		
		int result = boOrderService.setBoOrder(boOrderVO);
		
		assertEquals(1, result);
		
	}

}
