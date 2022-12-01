package com.seed.lib.book.shelf;

import java.sql.Date;

import lombok.Data;

@Data
public class BookShelfVO {

	private Long shNum;
	private String shName;
	private String shMemo;
	private String userName;
	private Date creDate;
	
}
