package com.seed.lib.book;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapper {
	
	//도서 디테일페이지
	public List<BookVO> getDetail (BookVO bookVO) throws Exception;

}
