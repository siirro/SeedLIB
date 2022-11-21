package com.seed.lib.book.like;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@Transactional(rollbackFor = Exception.class)
public class BookLikeService {
	
	@Autowired
	private BookLikeMapper bookLikeMapper;
	
	//좋아요 누르기
	public int setLike (MbBookLikeVO bookLikeVO) throws Exception {
		return bookLikeMapper.setLike(bookLikeVO);
	}
	
	//좋아요 기록 존재?
	public boolean getLikeExist (MbBookLikeVO bookLikeVO) throws Exception {
		int exist = bookLikeMapper.getLikeExist(bookLikeVO);
		boolean isExist = false;
		
		if (exist == 1) {
			isExist = true;
		}
		return isExist;
	}
	
	//좋아요 취소
	public int setUnlike (MbBookLikeVO bookLikeVO) throws Exception {
		return bookLikeMapper.setUnlike(bookLikeVO);
	}

}
