package com.seed.lib.board;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BoardMapperTest  {
	@Autowired
	private BoardService boardService;

	@Test
	public void BoardMapperTest()throws Exception {
		BoardVO boardVO =new BoardVO();
		
		for(int i=0; i<30; i++) {
		boardVO.setTitle("title"+i);
		boardVO.setWriter("writer"+i);
		boardVO.setContents("contents"+i);
		

		int result = boardService.setAdd(boardVO);
		assertEquals(30, result);
		
		
		}
	} 
}
