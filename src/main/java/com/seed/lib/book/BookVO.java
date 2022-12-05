package com.seed.lib.book;

import java.util.List;

import com.seed.lib.book.like.MbBookLikeVO;
import com.seed.lib.book.loan.BookLoanVO;
import com.seed.lib.book.loan.BookMutualLoanVO;
import com.seed.lib.book.loan.BookReservationVO;
import com.seed.lib.book.shelf.BookPickVO;
import com.seed.lib.book.shelf.BookShelfVO;

import lombok.Data;

@Data
public class BookVO {
	
	private Long isbn;
	private String title;
	private String writer;
	private String publisher;
	private Long bookDate;
	private Long category;
	private String image;
	private Long bookCount;
	private Long bookHeart;
	private Long num;
	
	private List<LibVO> libVOs;
	private List<BookLibVO> bookLibVOs;
	private List<BookShelfVO> bookShelfVOs;
	private List<BookPickVO> bookPickVOs;
	private List<BookLoanVO> loanVOs;
	private List<BookMutualLoanVO> muVOs;
	private List<BookReservationVO> reVOs;
}
