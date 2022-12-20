package com.seed.lib.board;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap.KeySetView;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seed.lib.member.MemberVO;
import com.seed.lib.util.Pager;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	
	@Autowired
	private BoardService boardService;

	
//	@GetMapping("delete")
//	@ResponseBody
//	public void FileDelete()throws Exception{
//		
//		
//		
//	}
//	
	
	@GetMapping("list")
	public ModelAndView getList(Pager pager) throws Exception{
		
		ModelAndView mv =new ModelAndView();
		
		List<BoardVO> ar = boardService.getList(pager);
		mv.addObject("list",ar);
		mv.addObject("pager",pager);
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
	public String setAdd()throws Exception{
		
	   return "board/add";
	}
	
	
	@PostMapping("add")
	public String setAdd(BoardVO boardVO)throws Exception{
		
		int result = boardService.setAdd(boardVO);
		
		return "redirect:./list"; 
	}
	
	
	@GetMapping("update")
	public ModelAndView setUpdate(BoardVO boardVO, ModelAndView mv)throws Exception{
		boardVO = boardService.getDetail(boardVO);
		mv.addObject("boardVO", boardVO);
		mv.setViewName("/board/update");
		return mv;

	}

	@PostMapping("update")
	public String setUpdate(BoardVO boardVO) throws Exception{
		int result = boardService.setUdate(boardVO);

		return "redirect:/board/detail?boardNum="+boardVO.getBoardNum();
	}

	@GetMapping("delete")
	@ResponseBody
	public int Delete(BoardVO boardVO) throws Exception{
		return boardService.setDelete(boardVO);
	}
	
}
