package com.seed.lib.board.wish;

import java.sql.Date;

import lombok.Data;

@Data
public class WishVO {
	

  private Long freeNum;
  private String title;
  private String contents;
  private String writer;
  private Date regDate;
  private boolean status;
  private boolean secret;
  
	
	
	

}
