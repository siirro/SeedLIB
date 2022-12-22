package com.seed.lib.search;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.admin.program.AdProgramVO;
import com.seed.lib.board.BoardVO;
import com.seed.lib.book.BookVO;
import com.seed.lib.util.Pager;
import com.seed.lib.util.SearchDetailPager;

@Mapper
public interface SearchMapper {
	
	public List<BoardVO> getNewNotice()throws Exception;
	public List<AdProgramVO> getNewProgram()throws Exception;
	public List<BookVO> getAccessionBook()throws Exception;
	public List<BookVO> getPopularBook()throws Exception;
	
	public List<BookVO> getSearchInfo(BookVO bookVO) throws Exception;
	public List<PopularVO> getPopularWord()throws Exception;
	
	public int setPopularWord(Pager pager)throws Exception;
	public Long getBookStatusEach(Long num)throws Exception;
	public Long getBookStatusTotal()throws Exception;
	
	public List<BookVO> getSearchDetail(SearchDetailPager searchDetailPager)throws Exception;
	public Long getSearchDetailCount(SearchDetailPager searchDetailPager)throws Exception;
	
	public List<BookVO> getSearchCategory(Map<String, Object> map)throws Exception;
	public Long getSearchCategoryCount(Map<String, Object> map)throws Exception;
	
	public List<BookVO> getSearchNewBook(Pager pager)throws Exception;
	
	public List<BookVO> getSearchSimple(Pager pager)throws Exception;
	public Long getSearchSimpleCount(Pager pager)throws Exception;
	
}
