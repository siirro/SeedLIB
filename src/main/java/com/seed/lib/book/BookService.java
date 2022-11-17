package com.seed.lib.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class BookService {

	@Autowired
	private BookMapper bookMapper;
	
	//도서 디테일
	public BookVO getDetail (BookVO bookVO) throws Exception{
		return bookMapper.getDetail(bookVO);
	}
}
