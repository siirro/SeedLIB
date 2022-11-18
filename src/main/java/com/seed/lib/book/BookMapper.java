package com.seed.lib.book;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.DetailPager;

@Mapper
public interface BookMapper {
	
	//도서 디테일페이지
	public List<BookVO> getDetail (BookVO bookVO) throws Exception;
	
	//도서 디테일페이지 내 도서 목록 (같은 장르, 작가)
	public List<BookVO> getDetailSC (DetailPager pager);
	public List<BookVO> getDetailSW (DetailPager pager);

}
