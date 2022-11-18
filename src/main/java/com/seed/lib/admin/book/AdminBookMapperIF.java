package com.seed.lib.admin.book;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;

@Mapper
public interface AdminBookMapperIF {

	public int setBookAdd(BookVO bookVO)throws Exception;
	
}
