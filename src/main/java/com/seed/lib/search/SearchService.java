package com.seed.lib.search;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.admin.program.AdProgramVO;
import com.seed.lib.board.BoardVO;
import com.seed.lib.book.BookVO;
import com.seed.lib.util.Pager;
import com.seed.lib.util.SearchDetailPager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SearchService {
	
	@Autowired
	private SearchMapper searchMapper;
	
	public List<BoardVO> getNewNotice()throws Exception{
		return searchMapper.getNewNotice();
	}
	
	public List<AdProgramVO> getNewProgram()throws Exception{
		return searchMapper.getNewProgram();
	}
	
	public List<BookVO> getAccessionBook()throws Exception{
		return searchMapper.getAccessionBook();
	}
	public List<BookVO> getPopularBook()throws Exception{
		return searchMapper.getPopularBook();
	}
	
	public List<BookVO> getSearchInfo(BookVO bookVO) throws Exception{
		return searchMapper.getSearchInfo(bookVO);
	}
	
	public List<PopularVO> getPopularWord()throws Exception{
		return searchMapper.getPopularWord();
	}
	
	public int setPopularWord(Pager pager)throws Exception{
		return searchMapper.setPopularWord(pager);
	}
	
	public Long getBookStatusEach(Long num)throws Exception{
		return searchMapper.getBookStatusEach(num);
	}
	
	public Long getBookStatusTotal()throws Exception{
		return searchMapper.getBookStatusTotal();
	}
	
	public List<BookVO> getSearchDetail(SearchDetailPager searchDetailPager)throws Exception{
		searchDetailPager.getRowNum();
		Long totalCount = searchMapper.getSearchDetailCount(searchDetailPager);
		searchDetailPager.getNum(totalCount);
		return searchMapper.getSearchDetail(searchDetailPager);
	}
	
	public long getSearchDetailCount(SearchDetailPager searchDetailPager)throws Exception{
		return searchMapper.getSearchDetailCount(searchDetailPager);
	}
	
	public List<BookVO> getSearchCategory(Pager pager, BookVO bookVO)throws Exception{
		pager.getRowNum();
		Long totalCount = getSearchCategoryCount(pager, bookVO);
		pager.getNum(totalCount);
		Map<String, Object> map = new HashMap<>();
		map.put("category", bookVO.getCategory());
		map.put("startRow", pager.getStartRow());
		map.put("perPage", pager.getPerPage());
		map.put("kind", pager.getKind());
		return searchMapper.getSearchCategory(map);
	}
	
	public Long getSearchCategoryCount(Pager pager, BookVO bookVO)throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("category", bookVO.getCategory());
		map.put("kind", pager.getKind());
		return searchMapper.getSearchCategoryCount(map);
	}
	
	public List<BookVO> getSearchNewBook(Pager pager)throws Exception{
		
		return searchMapper.getSearchNewBook(pager);
	}
	
	public List<BookVO> getSearchSimple(Pager pager)throws Exception{
		pager.getRowNum();
		Long totalCount = searchMapper.getSearchSimpleCount(pager);
		pager.getNum(totalCount);
		log.info("겟페이지는 : {}", pager.getPage());
		log.info("토탈페이지는 : {}", pager.getTotalPage1());
		
		if(pager.getPage()>pager.getTotalPage1()) {
			pager.setPage(pager.getTotalPage1());
		}
		
		
		return searchMapper.getSearchSimple(pager);
	}
	
	public Long getSearchSimpleCount(Pager pager)throws Exception{
		return searchMapper.getSearchSimpleCount(pager);
	}
	
}
