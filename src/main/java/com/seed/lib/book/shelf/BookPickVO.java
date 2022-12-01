package com.seed.lib.book.shelf;

import java.sql.Date;

import lombok.Data;

@Data
public class BookPickVO {
	
	private Long pickNum;
	private Long isbn;
	private Long shNum;
	private Date regDate;
}
