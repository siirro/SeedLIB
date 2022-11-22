package com.seed.lib.book.shelf;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class BookShelfService {
	
	@Autowired
	private BookShelfMapper bookShelfMapper;
	
	//책꽂이 목록
	public List<BookShelfVO> getShelfList (BookShelfVO shelfVO) throws Exception{
		return bookShelfMapper.getShelfList(shelfVO);
	}
		
	//새 책꽂이 생성
	public BookShelfVO setShelfAdd (BookShelfVO shelfVO) throws Exception{
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
	public BookVO setBookAdd (BookVO bookVO) throws Exception{
		return bookShelfMapper.setBookAdd(bookVO);
	}
		
	//책꽂이에서 책 삭제
	public BookVO setBookDelete (BookVO bookVO) throws Exception{
		return bookShelfMapper.setBookDelete(bookVO);
	}
	
	//책꽂이에 저장된 책 목록
	public BookVO getBookList (BookVO bookVO) throws Exception{
		return bookShelfMapper.getBookList(bookVO);
	}

}
