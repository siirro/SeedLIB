package com.seed.lib.book.order;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BoOrderServiceTest {

	@Autowired
	private BoOrderService boOrderService;
	
	//@Test
	void test()throws Exception {
		
		BoOrderVO boOrderVO = new BoOrderVO();
		
		int result = boOrderService.setBoOrder(boOrderVO);
		
		assertEquals(1, result);
		
	}

}
