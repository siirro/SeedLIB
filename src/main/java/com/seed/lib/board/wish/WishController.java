package com.seed.lib.board.wish;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.board.BoardService;
import com.seed.lib.board.BoardVO;

@Controller
public class WishController {
	
	

	@Autowired
	private BoardService boardService;
	
	
	@GetMapping("delete")
	@ResponseBody
	public void FileDelete()throws Exception{
		
		
		
	}
	
	
//	@GetMapping("list")
//	public ModelAndView getList(BoardVO boardVO) throws Exception{
//		
//		ModelAndView mv =new ModelAndView();
//		
//		List<BoardVO> ar = boardService.getList(boardVO);
//		mv.addObject("list",ar);
//		mv.setViewName("board/list");
//		
//		return mv;
//	}
//	
	@GetMapping("detail")
	public ModelAndView getDetail(BoardVO boardVO) throws Exception{
	
	ModelAndView mv =new ModelAndView();
	
	boardVO=boardService.getDetail(boardVO);
	
	
	mv.addObject("boardVO",boardVO);
	mv.setViewName("board/detail");
		
		return mv;
	} 
	
	
	@GetMapping("add")
	public String setAdd()throws Exception{
		
	   return "board/add";
	}
	
	
	@PostMapping("add")
	public String setAdd(BoardVO boardVO)throws Exception{
		
		int result = boardService.setAdd(boardVO);
		
		return "redirect:./list"; 
	}
	
	
	
}
