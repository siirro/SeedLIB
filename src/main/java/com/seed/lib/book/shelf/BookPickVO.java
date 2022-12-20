package com.seed.lib.book.shelf;

import java.sql.Date;

import lombok.Data;

@Data
public class BookPickVO {
	
	private Long pickNum;
	private Long isbn;
	private Long shNum;
	private Date regDate;
	
	//책꽂이에서 책 여러개를 삭제할 때
	private String isbnL[];
}
