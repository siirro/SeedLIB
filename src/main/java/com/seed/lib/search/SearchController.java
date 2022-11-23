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
import com.seed.lib.util.Pager;

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
	
	@GetMapping("simpleresult")
	@ResponseBody
	public ModelAndView getSearchSimple(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> ar = searchService.getSearchSimple(pager);
		Long count = searchService.getSearchSimpleCount(pager);
		
		mv.addObject("list", ar);
		mv.addObject("count", count);
		mv.setViewName("search/simple");
		
		
		log.info("BookVO의 사이즈 : {}",ar.size());
		int size = ar.size();
		if(size==0) {
			mv.addObject("message", "검색 결과가 없습니다.");
		}else {
			mv.addObject("message", null);
		}
		
		log.info("kind는? {}", pager.getKind());
		
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
