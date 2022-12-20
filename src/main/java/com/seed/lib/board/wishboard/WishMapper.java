package com.seed.lib.board.wishboard;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.Pager;

@Mapper
public interface WishMapper {
	
	public List<WishVO> getList(Pager pager)throws Exception;
	public WishVO getDetail(WishVO wishVO)throws Exception;
	public int setAdd(WishVO wishVO)throws Exception;
	public int setUpdate(WishVO wishVO) throws Exception;
	public int setDelete(WishVO wishVO) throws Exception;
	
}
