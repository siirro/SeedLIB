package com.seed.lib.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.Pager;

@Mapper
public interface BoardMapper {

	
	public List<BoardVO> getList(Pager pager)throws Exception;
	public BoardVO getDetail(BoardVO boardVO)throws Exception;
	public int setAdd(BoardVO boardVO)throws Exception;
	public int setUpdate(BoardVO boardVO) throws Exception;
	public int setDelete(BoardVO boardVO) throws Exception;
	public int setFileAdd(BoardFileVO boardFileVO)throws Exception;
	public int FileDelete(BoardFileVO boardFileVO)throws Exception;
	public BoardFileVO getDetailFile(BoardFileVO boardFileVO)throws Exception;

}
