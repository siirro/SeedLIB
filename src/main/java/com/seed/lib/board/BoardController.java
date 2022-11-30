package com.seed.lib.board;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap.KeySetView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.member.MemberVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	
	@Autowired
	private BoardService boardService;
	
	
	@GetMapping("list")
	public ModelAndView getList(BoardVO boardVO) throws Exception{
		ModelAndView mv =new ModelAndView();
		List<BoardVO> ar = boardService.getList(boardVO);
		mv.addObject("list",ar);
		mv.setViewName("board/list");
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(BoardVO boardVO) throws Exception{
	ModelAndView mv =new ModelAndView();
	boardVO=boardService.getDetail(boardVO);
	mv.addObject("boardVO",boardVO);
	mv.setViewName("board/detail");
		
		return mv;
	} 
	
	
	@GetMapping("add")
	public String setAdd(BoardVO boardVO)throws Exception{
		return "board/add";
	}

	
}
