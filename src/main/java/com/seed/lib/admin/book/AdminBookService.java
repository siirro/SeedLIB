package com.seed.lib.admin.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.book.BookVO;
import com.seed.lib.member.MemberVO;

@Service
public class AdminBookService {

	@Autowired
	private AdminBookMapper adminBookMapper;
	
	// 도서 목록 조회
	public List<BookVO> getAdBookList()throws Exception{
		return adminBookMapper.getAdBookList();
	}
	
	// 도서 등록
	public int setAdBookAdd(BookVO bookVO)throws Exception{
		return adminBookMapper.setAdBookAdd(bookVO);
	}
	
}
