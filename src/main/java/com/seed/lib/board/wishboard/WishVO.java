package com.seed.lib.board.wishboard;

import java.sql.Date;

import lombok.Data;

@Data
public class WishVO {
	

  private Long wishNum;
  private String title;
  private String contents;
  private String writer;
  private Date regDate;
  private boolean status;
  private boolean secret;
  
	
	
	

}
