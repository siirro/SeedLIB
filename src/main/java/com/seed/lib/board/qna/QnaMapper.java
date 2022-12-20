package com.seed.lib.board.qna;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.Pager;
@Mapper
public interface QnaMapper {
	public List<QnaVO> getList(Pager pager)throws Exception;
	public QnaVO getDetail(QnaVO qnaVO)throws Exception;
	public int setAdd(QnaVO qnaVO)throws Exception;
	public int setUpdate(QnaVO qnaVO) throws Exception;
	public int setDelete(QnaVO qnaVO) throws Exception;
}
