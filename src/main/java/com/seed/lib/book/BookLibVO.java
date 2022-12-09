package com.seed.lib.book;

import lombok.Data;

@Data
public class BookLibVO {

	private Long blibNum;
	private Long libNum;
	private Long isbn;
	private int quantity;
	private int able;
	
	//대출인지 반납인지 | mapper용
	private String what;
	
}
