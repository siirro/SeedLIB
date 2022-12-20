package com.seed.lib.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.board.qna.QnaVO;
import com.seed.lib.util.BoardPager;
import com.seed.lib.util.Pager;

@Mapper
public interface BoardMapper {

	
	public List<BoardVO> getList(BoardPager boardPager)throws Exception;
	
	public BoardVO getDetail(BoardVO boardVO)throws Exception;
	
	public Long getTotalCount(BoardPager boardPager) throws Exception;

	public int setAdd(BoardVO boardVO)throws Exception;
	
	public int setHit(BoardVO boardVO) throws Exception;

	public int setUpdate(BoardVO boardVO) throws Exception;
	
	public int setDelete(BoardVO boardVO) throws Exception;
	
	public int setFileAdd(BoardFileVO boardFileVO)throws Exception;
	
	public int FileDelete(BoardFileVO boardFileVO)throws Exception;
	
	public BoardFileVO getDetailFile(BoardFileVO boardFileVO)throws Exception;

}
