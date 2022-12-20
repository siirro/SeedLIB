package com.seed.lib.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.filechooser.FileNameExtensionFilter;

import org.apache.catalina.core.ApplicationContext;
import org.apache.catalina.webresources.AbstractFileResourceSet;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.AbstractView;

import com.nimbusds.openid.connect.sdk.assurance.evidences.attachment.Attachment;
import com.seed.lib.board.BoardFileVO;

import lombok.extern.slf4j.Slf4j;

@Component 
@Slf4j
public class FileManager extends AbstractView{
	
	@Value("${app.download.base}")
	private String base;
	private WebApplicationContext context;
	

	@Override  //다운로드 메서드
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		BoardFileVO boardFileVO = (BoardFileVO)model.get("fileVO");
		String path= (String)model.get("path");
		File file= new File(base+path,boardFileVO.getFileName());
	
		response.setCharacterEncoding("UTF-8");
		
		response.setContentLengthLong(file.length());
		
		String oriName= URLEncoder.encode(boardFileVO.getOriName(),"UTF-8");
	
		response.setHeader("Content-Disposition", "attachment;filename=\""+oriName+"\"");
		response.setHeader("Content-Transfer-Encoding","binary");
		
		FileInputStream fi =new FileInputStream(file);
		OutputStream os = response.getOutputStream();
		FileCopyUtils.copy(fi, os);
		os.close();
		fi.close();
	
	}
	

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

	   public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
	        this.context = (WebApplicationContext) applicationContext;
	    }
	
}