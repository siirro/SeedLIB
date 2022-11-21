package com.seed.lib.search;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;

@Mapper
public interface SearchMapper {

	public List<BookVO> getSearchSimple(BookVO bookVO)throws Exception;
	public Long getSearchSimpleCount(BookVO bookVO)throws Exception;
	
}
