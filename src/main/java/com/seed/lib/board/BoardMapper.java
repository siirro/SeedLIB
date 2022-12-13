package com.seed.lib.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.Pager;

@Mapper
public interface BoardMapper {

	
	public List<BoardVO> getList(BoardVO boardVO)throws Exception;
	public BoardVO getDetail(BoardVO boardVO)throws Exception;
	public int setAdd(BoardVO boardVO)throws Exception;
	public int setFileAdd(BoardFileVO boardFileVO)throws Exception;
}
