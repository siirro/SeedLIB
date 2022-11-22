package com.seed.lib.book.like;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.book.BookVO;

@Mapper
public interface BookLikeMapper {
	
	public int setLike (MbBookLikeVO bookLikeVO) throws Exception;
	
	public int getLikeExist (MbBookLikeVO bookLikeVO) throws Exception;
	
	public int setUnlike(MbBookLikeVO bookLikeVO) throws Exception;
	
	public int getBookLike (BookVO bookVO) throws Exception;

}
