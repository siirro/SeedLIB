package com.seed.lib.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.board.BoardVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.util.BoardPager;
import com.seed.lib.util.Pager;

@Controller
@RequestMapping("/qna/*")
public class QnaController {


	@Autowired
	private QnaService qnaService;

	@GetMapping("list")
	public ModelAndView getList(BoardPager boardPager) throws Exception{
		
		ModelAndView mv =new ModelAndView();
		
		List<QnaVO> ar = qnaService.getList(boardPager);
		mv.addObject("list",ar);
		mv.addObject("pager",boardPager);
		mv.setViewName("qna/list");
		
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(QnaVO qnaVO) throws Exception{
	
	ModelAndView mv =new ModelAndView();
	qnaVO= qnaService.getDetail(qnaVO);
	mv.addObject("qnaVO",qnaVO);
	mv.setViewName("qna/detail");
		
		return mv;
	} 
	
	
	@GetMapping("add")
	public String setAdd()throws Exception{
		
	   return "qna/add";
	}
	
	
	@PostMapping("add")
	public String setAdd(QnaVO qnaVO)throws Exception{
		
		int result = qnaService.setAdd(qnaVO);
		
		return "redirect:./list"; 
	}
	
	
	@GetMapping("update")
	public ModelAndView setUpdate(QnaVO qnaVO, ModelAndView mv)throws Exception{
		qnaVO= qnaService.getDetail(qnaVO);
		mv.addObject("qnaVO", qnaVO);
		mv.setViewName("qna/update");
		return mv;

	}

	@PostMapping("update")
	public String setUpdate(QnaVO qnaVO) throws Exception{
		int result = qnaService.setUdate(qnaVO);

		return "redirect:/qna/detail?qnaNum="+qnaVO.getQnaNum();
	}

	@GetMapping("delete")
	@ResponseBody
	public int setDelete(QnaVO qnaVO) throws Exception{
		return qnaService.setDelete(qnaVO);
	}
}
