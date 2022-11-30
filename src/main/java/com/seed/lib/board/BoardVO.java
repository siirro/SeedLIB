package com.seed.lib.board;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	
 private Long boardNum;
 private String title;
 private String contents;
 private String writer;
 private Date regDate;
 private Long hit;
 private boolean secret;
 
 private BoardFileVO[] boardFileVOs;
}
