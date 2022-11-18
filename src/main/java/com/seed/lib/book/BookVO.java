package com.seed.lib.book;

import java.util.List;
import lombok.Data;

@Data
public class BookVO {
	
	private Long isbn;
	private String title;
	private String writer;
	private String publisher;
	private Long bookDate;
	private String able;
	private Long category;
	private Long quantity;
	private String image;
	private Long bookCount;
	private Long bookHeart;
	private Long num;
	
	private List<LibVO> libVOs;
}
