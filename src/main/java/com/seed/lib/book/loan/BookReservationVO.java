package com.seed.lib.book.loan;

import java.sql.Date;

import lombok.Data;

@Data
public class BookReservationVO {

	private Long rvNum;
	private Long isbn;
	private String userName;
	private Date enableDate;
	private Date regDate;
}
