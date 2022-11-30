package com.seed.lib.book.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoOrderService {

	@Autowired
	private BoOrderMapper boOrderMapper;
	
	// 제본 주문
	public int setBoOrder(BoOrderVO boOrderVO)throws Exception{
		return boOrderMapper.setBoOrder(boOrderVO);
	}
	
}
