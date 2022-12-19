package com.seed.lib.donation;

import java.sql.Date;

import com.seed.lib.book.LibVO;
import com.seed.lib.util.StatusVO;

import lombok.Data;

@Data
public class DonationVO {

	private Long donNum;
	private String donTitle;
	private String donWriter;
	private String donPublisher;
	private String donMemo;
	private Date donDate;
	private String emailAgree;
	private Long isbn;
	private String userName;
	private String image;
	private String email;
	private String price;
	private Long donYear;
	private Long category;
	
	private StatusVO statusVO;
	private LibVO libVO;
}
