package com.seed.lib.book.shelf;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.ShelfBookPager;
import com.seed.lib.util.ShelfPager;

@Mapper
public interface BookShelfMapper {
	
	//책 제목 검색용
	public String getBookTitle (Long isbn) throws Exception;
	
	//사용자의 기존 책꽂이 존재 유무
		// 존재하면 바로 책 저장 페이지 | 없으면 새 책꽂이 먼저 생성
	public int getShelfExist (BookShelfVO shelfVO) throws Exception;
	
	//동일한 책꽂이명 존재 유무
		//setShelfAdd 에서 사용 - 1이면 존재 -> 저장X | 0이면 저장 가능
	public int getSameShelf (BookShelfVO shelfVO) throws Exception;
	
	//사용자의 책꽂이 내 기존 책 존재 유무
		//setBookAdd 에서 사용 - 1이면 존재 -> 저장X | 0이면 저장 가능
	public int getBookExist (BookPickVO pickVO) throws Exception;
	
	//책꽂이 목록 - Pager X
	public List<BookShelfVO> getShelfList (String userName) throws Exception;
	
	//책꽂이 목록 - Pager O | 검색 : 이름, 생성날짜
	public List<BookShelfVO> getShelfListP (ShelfPager pager) throws Exception;
	
	//새 책꽂이 생성
	public int setShelfAdd (BookShelfVO shelfVO) throws Exception;
	
	//책꽂이 삭제
	public BookShelfVO setShelfDelete (BookShelfVO shelfVO) throws Exception;
	
	//책꽂이 수정
	public BookShelfVO setShelfUpdate (BookShelfVO shelfVO) throws Exception;
	
	//책꽂이에 책 저장
	public int setBookAdd (BookPickVO pickVO) throws Exception;
	
	//책꽂이에서 책 삭제
	public int setBookDelete (BookPickVO pickVO) throws Exception;
	
	//책꽂이에 저장된 책 목록
	public List<BookVO> getBookList (ShelfBookPager pager) throws Exception;
	
	//pager
	public Long getShelfCount (ShelfPager pager) throws Exception;
	public Long getBookCount (ShelfBookPager pager) throws Exception;

}
