package com.seed.lib.search;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.Pager;

@Mapper
public interface SearchMapper {

	public List<BookVO> getSearchSimple(Pager pager)throws Exception;
	public Long getSearchSimpleCount(Pager pager)throws Exception;
	
}
