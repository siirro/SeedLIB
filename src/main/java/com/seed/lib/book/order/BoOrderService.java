package com.seed.lib.book.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoOrderService {

	@Autowired
	private BoOrderMapper boOrderMapper;
	
	// 바구니 제본 신청 목록
	public List<BookPrintVO> getBoCartList(BookPrintVO BookPrintVO)throws Exception{
		return boOrderMapper.getBoCartList(BookPrintVO);
	}
	
	// 바구니 제본 신청
	public int setBoCart(BookPrintVO bookPrintVO)throws Exception{
		return boOrderMapper.setBoCart(bookPrintVO);
	}
	
	// 제본 주문
	public int setBoOrder(BoOrderVO boOrderVO)throws Exception{
		return boOrderMapper.setBoOrder(boOrderVO);
	}
	
}
