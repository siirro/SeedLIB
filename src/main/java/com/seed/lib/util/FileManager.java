package com.seed.lib.util;

import java.io.File;
import java.util.UUID;

import org.apache.catalina.webresources.AbstractFileResourceSet;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Component 
@Slf4j
public class FileManager {

	

	public String saveFile(MultipartFile files, String path)throws Exception{ 
		
	   
		// 중복되지 않는 파일명 생성
		String fileName= UUID.randomUUID().toString(); 
	   
		// 확장자
		StringBuffer bf =new StringBuffer();
		bf.append(fileName); 
		bf.append("_"); 
		
		// 파일 확장자 분리
		String ex= files.getOriginalFilename();
		ex= ex.substring(ex.lastIndexOf("."));
				
		//bf.append(files.getOriginalFilename());
		bf.append(ex);
		fileName=bf.toString();
		
		// 파일 저장
	    File file = new File(path , bf.toString());

	   // 파일 저장방법
	   files.transferTo(file);
	  
	   
	   
	   return "fileName";
   }

	
}