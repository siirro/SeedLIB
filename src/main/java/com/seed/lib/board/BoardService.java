package com.seed.lib.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;

	
	public List<BoardVO> getList(BoardVO boardVO)throws Exception{
		return boardMapper.getList(boardVO);
	}
	
	public BoardVO getDetail(BoardVO boardVO)throws Exception{
		return boardMapper.getDetail(boardVO);

	}

	public int setAdd(BoardVO boardVO)throws Exception{
		return boardMapper.setAdd(boardVO);
	}
}
