package com.seed.lib.book.shelf;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.ShelfBookPager;
import com.seed.lib.util.ShelfPager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class BookShelfService {
	
	@Autowired
	private BookShelfMapper bookShelfMapper;
	
	//책 제목 검색용
	public String getBookTitle (Long isbn) throws Exception{
		return bookShelfMapper.getBookTitle(isbn);
	}
	
	//사용자의 기존 책꽂이 존재 유무
	public boolean getShelfExist (BookShelfVO shelfVO) throws Exception{
		int exist = bookShelfMapper.getShelfExist(shelfVO);
		boolean isExist = false;
		
		if (exist >= 1) {
			isExist = true;
		}
		return isExist;
	}
	
	//책꽂이 목록 - Pager X
	public List<BookShelfVO> getShelfList (String userName) throws Exception{
		return bookShelfMapper.getShelfList(userName);
	}
	
	//책꽂이 목록 - Pager O | 검색 : 이름, 생성날짜
	public List<BookShelfVO> getShelfListP (ShelfPager pager) throws Exception{
		Long totalCount = bookShelfMapper.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return bookShelfMapper.getShelfListP(pager);
	}
		
	//새 책꽂이 생성
	public int setShelfAdd (BookShelfVO shelfVO) throws Exception{
		return bookShelfMapper.setShelfAdd(shelfVO);
	}
		
	//책꽂이 삭제
	public BookShelfVO setShelfDelete (BookShelfVO shelfVO) throws Exception{
		return bookShelfMapper.setShelfDelete(shelfVO);
	}
	
	//책꽂이 수정
	public BookShelfVO setShelfUpdate (BookShelfVO shelfVO) throws Exception{
		return bookShelfMapper.setShelfUpdate(shelfVO);
	}
		
	//책꽂이에 책 저장
	public int setBookAdd (BookPickVO pickVO) throws Exception{
		//1이면 존재 -> 저장X | 0이면 저장 가능
		int result = bookShelfMapper.getBookExist(pickVO);
		if(result==0) {
			return 0;
		}else {
			return 1;
		}
	}
		
	//책꽂이에서 책 삭제
	public int setBookDelete (BookPickVO pickVO) throws Exception{
		return bookShelfMapper.setBookDelete(pickVO);
	}
	
	//책꽂이에 저장된 책 목록
	public List<BookVO> getBookList (ShelfBookPager pager) throws Exception{
		Long totalCount = bookShelfMapper.getBookCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return bookShelfMapper.getBookList(pager);
	}
	
	//pager
	public Long getCount (ShelfPager pager) throws Exception{
		return bookShelfMapper.getCount(pager);
	}
	
	public Long getBookCount (ShelfBookPager pager) throws Exception{
		return bookShelfMapper.getBookCount(pager);
	}

}
