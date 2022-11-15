package com.seed.lib.book;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class BookVO {
	
	private int isbn;
	private String title;
	private String writer;
	private String publisher;
	private Date bDate;
	private String able;
	private String category;
	private int quantity;
	private String image;
	private int bCount;
	
	private List<LibVO> libVOs;
}
