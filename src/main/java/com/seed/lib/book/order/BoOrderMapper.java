package com.seed.lib.book.order;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoOrderMapper {

	// 제본 주문
	public int setBoOrder(BoOrderVO boOrderVO)throws Exception;
	
}
