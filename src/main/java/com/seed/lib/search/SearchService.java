package com.seed.lib.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.book.BookVO;

@Service
public class SearchService {
	
	@Autowired
	private SearchMapper searchMapper;
	
	public List<BookVO> getSearchSimple(BookVO bookVO)throws Exception{
		return searchMapper.getSearchSimple(bookVO);
	}
	
	public Long getSearchSimpleCount(BookVO bookVO)throws Exception{
		return searchMapper.getSearchSimpleCount(bookVO);
	}
	
}
