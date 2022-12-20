package com.seed.lib.board.qna;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.util.BoardPager;
import com.seed.lib.util.Pager;

@Service
public class QnaService {

	@Autowired
	private QnaMapper qnaMapper ;
	
	
	public List<QnaVO> getList(BoardPager boardPager)throws Exception{
		boardPager.makeRow();
		boardPager.getNum(qnaMapper.getTotalCount(boardPager));
		return qnaMapper.getList(boardPager);	
		
	}
	
	
	public QnaVO getDetail(QnaVO qnaVO)throws Exception{
		qnaMapper.setHit(qnaVO);
		return qnaMapper.getDetail(qnaVO);

	}

	public int setAdd(QnaVO qnaVO)throws Exception{
		 int result= qnaMapper.setAdd(qnaVO);
		

		return result;
	}
	

	public int setUdate(QnaVO qnaVO)throws Exception {

		int result = qnaMapper.setUpdate(qnaVO);
		return result;
	}
	
	public int setDelete(QnaVO qnaVO)throws Exception{
		int result= qnaMapper.setDelete(qnaVO);
		return result;
	}
	
}
