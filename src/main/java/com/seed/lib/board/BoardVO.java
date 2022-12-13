package com.seed.lib.board;

import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardVO {
	
 private Long boardNum;
 private String title;
 private String contents;
 private String writer;
 private Date regDate;
 private Long hit;
 private List<BoardFileVO> boardFileVOs;
 
 private MultipartFile[] files;
}
