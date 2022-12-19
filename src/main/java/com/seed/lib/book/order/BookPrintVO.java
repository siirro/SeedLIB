package com.seed.lib.book.order;

import lombok.Data;

@Data
public class BookPrintVO {


	// 제본 주문번호
	private Long caNum;
	
	// 제본 횟수
	private Integer caCount;
	
	// 컬러
	private String caColor;
	
	// 용지
	private String caSize;
	
	// 제본 시작 페이지번호
	private Long caStPage;
	
	// 제본 마지막 페이지번호
	private Long caLsPage;
	
	// 제본 총 페이지 수
	private Long caTtPage;
	
	// 제본 금액
	private Long caAmount;
	
	// 결제 상태
	private String caStatus;
	
	// 회원 아이디
	private String userName;
	
	// 도서
	private String isbn;
	
}
