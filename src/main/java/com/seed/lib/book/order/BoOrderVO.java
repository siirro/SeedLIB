package com.seed.lib.book.order;

import java.sql.Date;

import lombok.Data;

@Data
public class BoOrderVO {

	// 주문번호
	private Long ordNum;
	
	// 총 금액
	private Long ordTotal;
	
	// 주문 접수일
	private Date ordDate;
	
	// 주문 상태
	private Long ordStatus;
	
	
}
