package com.seed.lib.book;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.DetailPager;

@Mapper
public interface BookMapper {
	
	// 도서 상세정보 출력
	public BookVO getBookInfo(BookVO bookVO)throws Exception;
	
	//도서 디테일페이지
	public List<BookVO> getDetail (BookVO bookVO) throws Exception;

}
