package com.seed.lib.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.Pager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SearchService {
	
	@Autowired
	private SearchMapper searchMapper;
	
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
