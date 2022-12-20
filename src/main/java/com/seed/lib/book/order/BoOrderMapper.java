package com.seed.lib.book.order;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.member.MemberVO;

@Mapper
public interface BoOrderMapper {

	// 바구니 제본 신청 목록
	public MemberVO getBoCartList(MemberVO memberVO)throws Exception;
	
	// 바구니 제본 신청
	public int setBoCart(BookPrintVO bookPrintVO)throws Exception;
	
	// 제본 주문
	public int setBoOrder(BoOrderVO boOrderVO)throws Exception;
	
}
