package com.seed.lib.book.like;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookLikeMapper {
	
	public int setLike (MbBookLikeVO bookLikeVO) throws Exception;
	
	public int getLikeExist (MbBookLikeVO bookLikeVO) throws Exception;
	
	public int setUnlike(MbBookLikeVO bookLikeVO) throws Exception;

}
