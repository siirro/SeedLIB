package com.seed.lib.board.wishboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.board.BoardService;
import com.seed.lib.board.BoardVO;
import com.seed.lib.board.qna.QnaService;
import com.seed.lib.board.qna.QnaVO;
import com.seed.lib.util.BoardPager;
import com.seed.lib.util.Pager;

@Controller
@RequestMapping("/wish/*")
public class WishController {
	
	

	@Autowired
	private WishService wishService;

	@GetMapping("list")
	public ModelAndView getList(BoardPager boardPager) throws Exception{
		
		ModelAndView mv =new ModelAndView();
		
		List<WishVO> ar = wishService.getList(boardPager);
		mv.addObject("list",ar);
		mv.addObject("pager",boardPager);
		mv.setViewName("wish/list");
		
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(WishVO wishVO) throws Exception{
	
	ModelAndView mv =new ModelAndView();
	wishVO= wishService.getDetail(wishVO);
	
	
	mv.addObject("wishVO",wishVO);
	mv.setViewName("wish/detail");
		
		return mv;
	} 
	
	
	@GetMapping("add")
	public String setAdd()throws Exception{
		
	   return "wish/add";
	}
	
	
	@PostMapping("add")
	public String setAdd(WishVO wishVO)throws Exception{
		
		int result = wishService.setAdd(wishVO);
		
		return "redirect:./list"; 
	}
	
	
	@GetMapping("update")
	public ModelAndView setUpdate(WishVO wishVO, ModelAndView mv)throws Exception{
		wishVO= wishService.getDetail(wishVO);
		mv.addObject("wishVO", wishVO);
		mv.setViewName("wish/update");
		return mv;

	}

	@PostMapping("update")
	public String setUpdate(WishVO wishVO) throws Exception{
		int result = wishService.setUdate(wishVO);

		return "redirect:/wish/detail?wishNum="+wishVO.getWishNum();
	}

	@GetMapping("delete")
	@ResponseBody
	public int setDelete(WishVO wishVO) throws Exception{
		return wishService.setDelete(wishVO);
	}
}
