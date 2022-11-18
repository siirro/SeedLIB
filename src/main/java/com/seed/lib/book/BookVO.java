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
	private int able;
	private String category;
	private String image;
	private Long bookCount;
	private Long bookHeart;
	
	private List<LibVO> libVOs;
}
