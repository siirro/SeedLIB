package com.seed.lib.board;

import java.io.File;
import java.nio.file.Files;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.seed.lib.util.FileManager;
import com.seed.lib.util.Pager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	@Autowired
	private FileManager fileManager;
	
	@Value ("${app.upload.qna}")
	private String path;
	

	
	public List<BoardVO> getList(Pager pager)throws Exception{
		return boardMapper.getList(pager);
	}
	
	public BoardVO getDetail(BoardVO boardVO)throws Exception{
		return boardMapper.getDetail(boardVO);

	}

	public int setAdd(BoardVO boardVO)throws Exception{
		 int result= boardMapper.setAdd(boardVO);
		
		//1.파일 객체 생성
		File file =new File(path);
		
		if(!file.exists()) { 
		boolean check= file.mkdirs();

	}
		
	
			for (MultipartFile f: boardVO.getFiles()) {
		if(!f.isEmpty()){
			log.info("fileName:{}", f.getOriginalFilename());
			String fileName= fileManager.saveFile(f, path);
			
			BoardFileVO boardFileVO=new BoardFileVO();
			
		   boardFileVO.setFileName(fileName);
		   boardFileVO.setOriName(f.getOriginalFilename());
		   boardFileVO.setBoardNum(boardVO.getBoardNum());
		     boardMapper.setFileAdd(boardFileVO);
		  } 
		}

		return result;
	}
	

	public int setUdate(BoardVO boardVO)throws Exception {

		int result = boardMapper.setUpdate(boardVO);
		return result;
	}
	
	public int setDelete(BoardVO boardVO)throws Exception{
		int result= boardMapper.setDelete(boardVO);
		return result;
	}
	
	public BoardFileVO getFileDetail(BoardFileVO boardFileVO)throws Exception{
		return boardMapper.getDetailFile(boardFileVO);
		
	}

}
	