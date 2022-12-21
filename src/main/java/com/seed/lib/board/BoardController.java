package com.seed.lib.board;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap.KeySetView;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seed.lib.member.MemberVO;
import com.seed.lib.mypage.MypageService;
import com.seed.lib.util.BoardPager;
import com.seed.lib.util.Pager;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private MypageService mypageService;
	
	
	
	@PostMapping("fileDelete")
	@ResponseBody
	public int FileDelete(BoardFileVO boardFileVO)throws Exception{
		int result = boardService.FileDelete(boardFileVO);
		
		return result;
		
	}
	
	
	@GetMapping("list")
	public ModelAndView getList(BoardPager boardPager) throws Exception{
		
		ModelAndView mv =new ModelAndView();
		
		List<BoardVO> ar = boardService.getList(boardPager);
		mv.addObject("list",ar);
		mv.addObject("pager",boardPager);
		mv.setViewName("board/list");
		
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(HttpSession session, BoardVO boardVO) throws Exception{
	
	ModelAndView mv =new ModelAndView();
	
	boardVO=boardService.getDetail(boardVO);
	
	
	mv.addObject("board",boardVO);
	mv.setViewName("board/detail");
		
		return mv;
	} 
	
	
	@GetMapping("add")
	public ModelAndView setAdd(HttpSession session, ModelAndView mv , MemberVO memberVO)throws Exception{
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
	    Authentication authentication = context.getAuthentication();
	    memberVO  = (MemberVO)authentication.getPrincipal();
		memberVO= mypageService.getMyPage(memberVO);
		mv.addObject("vo", memberVO);
		mv.setViewName("board/add");
		
	   return mv;
	}
	
	
	@PostMapping("add")
	public String setAdd( BoardVO boardVO)throws Exception{
		

		int result = boardService.setAdd(boardVO);
		
		return "redirect:./list"; 
	}
	
	
	@GetMapping("update")
	public ModelAndView setUpdate(HttpSession session,BoardVO boardVO, ModelAndView mv)throws Exception{
		MemberVO memberVO =new MemberVO();
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
	    Authentication authentication = context.getAuthentication();
	    memberVO  = (MemberVO)authentication.getPrincipal();
		memberVO= mypageService.getMyPage(memberVO);
		mv.addObject("vo", memberVO);
		
		boardVO = boardService.getDetail(boardVO);
		mv.addObject("board", boardVO);
		mv.setViewName("board/update");
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
