package com.seed.lib.admin.book;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.util.AdbookPager;

@Mapper
public interface AdminBookMapper {
	
	// 도서목록 페이징처리 - 전체 수
	public Long getAdBookTotalCount(AdbookPager adbookPager)throws Exception;
	
	// 도서 목록 조회
	public List<BookVO> getAdBookList(AdbookPager adbookPager)throws Exception;

	// 도서 등록
	public Long bookCount() throws Exception;
	public int isHaveBook(Map<String, Object> map) throws Exception;
	public int getHaveBook(Map<String, Object> map) throws Exception;
	public int updateQuantity(Map<String, Object> map) throws Exception;
	public int setBookAdd(BookVO bookVO)throws Exception;
	public int setLibOne(Map<String, Object> map) throws Exception;
	
	//도서 수정
	public int setBookUpdate(BookVO bookVO) throws Exception;
	
	//도서 삭제
	public int setBookDelete(String isbn) throws Exception;
}
