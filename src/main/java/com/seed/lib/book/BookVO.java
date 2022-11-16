package com.seed.lib.book;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class BookVO {
	
	private Long isbn;
	private String title;
	private String writer;
	private String publisher;
	private Date bDate;
	private String able;
	private String category;
	private Long quantity;
	private String image;
	private Long bCount;
	private Long bHeart;
	
	private List<LibVO> libVOs;
}
