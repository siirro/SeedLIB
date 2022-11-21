package com.seed.lib.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/search/*")
@Slf4j
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@GetMapping("simple")
	public String getSearch()throws Exception{
		return "search/simple";
	}
	
	@PostMapping("simple")
	@ResponseBody
	public ModelAndView getSearchSimple(BookVO bookVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> ar = searchService.getSearchSimple(bookVO);
		Long count = searchService.getSearchSimpleCount(bookVO);
		
		mv.addObject("list", ar);
		mv.addObject("count", count);
		mv.setViewName("search/simple?search="+bookVO.getSearch());
		
		log.info("BookVO의 사이즈 : {}",ar.size());
		return mv;
	}
	
	@GetMapping("category")
	public String getCategory()throws Exception{
		return "search/category";
	}
	
	@GetMapping("newbook")
	public String getNewbook()throws Exception{
		return "search/newbook";
	}

}
