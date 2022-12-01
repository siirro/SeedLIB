package com.seed.lib.admin.book;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;
import com.seed.lib.member.MemberVO;

@Mapper
public interface AdminBookMapper {
	
	// 도서 목록 조회
	public List<BookVO> getAdBookList()throws Exception;

	// 도서 등록
	public int setAdBookAdd(BookVO bookVO)throws Exception;
	
}
