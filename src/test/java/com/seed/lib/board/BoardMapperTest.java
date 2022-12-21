package com.seed.lib.board;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.seed.lib.board.wishboard.WishMapper;
import com.seed.lib.board.wishboard.WishService;
import com.seed.lib.board.wishboard.WishVO;

@SpringBootTest
class BoardMapperTest  {
	@Autowired
	private WishService wishService;

	@Test
	public void BoardMapperTest()throws Exception {
		WishVO wishVO =new WishVO();
		
		for(int i=0; i<30; i++) {
			wishVO.setTitle("title"+i);
			wishVO.setWriter("writer"+i);
			wishVO.setContents("contents"+i);
		

		int result = wishService.setAdd(wishVO);
		assertEquals(1, result);
		
		
		}
	} 
}
