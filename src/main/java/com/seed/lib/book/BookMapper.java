package com.seed.lib.book;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapper {
	
	//도서 디테일페이지
	public BookVO getDetail (BookVO bookVO) throws Exception;

}
