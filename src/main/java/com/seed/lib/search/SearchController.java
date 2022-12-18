package com.seed.lib.search;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookService;
import com.seed.lib.book.BookVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.util.Pager;
import com.seed.lib.util.SearchDetailPager;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/search/*")
@Slf4j
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	@Autowired
	private BookService bookService;
	
	@GetMapping("simple")
	public String getSearch()throws Exception{
		return "search/simple";
	}
	
	// 소장정보
	@GetMapping("simpleresultInfo1")
	@ResponseBody
	public ModelAndView simpleresultInfo1(HttpSession session, Long isbn)throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		
		
		
		BookVO bookVO = new BookVO();
		bookVO.setIsbn(isbn);
		//도서 북립정보
		List<BookVO> ar = searchService.getSearchInfo(bookVO);
		mv.addObject("detail", ar);
		return mv;
		
		
	}
	
	@GetMapping("simpleresult")
	@ResponseBody
	public ModelAndView getSearchSimple(HttpSession session, Pager pager)throws Exception{
		
		
		ModelAndView mv = new ModelAndView();
		
//		log.info("서치단어는? {}",pager.getSearch());
		int result = searchService.setPopularWord(pager);
		
		
		// 세션에서 한 유저의 정보를 꺼냄
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");

		// 비어있지 않다면 모델앤뷰에 넣기
		if(memberVO != null) {
			mv.addObject("member", memberVO);			
		} 
		
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
	
	@GetMapping("detail")
	public String getDetail()throws Exception{
		return "search/detail";
	}
	
	@GetMapping("detailResult")
	public ModelAndView getSearchDetail(SearchDetailPager searchDetailPager)throws Exception{
		
		log.info("서치단어는? {}",searchDetailPager.getSearchTitle());
		Pager pager = new Pager();
		pager.setSearch(searchDetailPager.getSearchTitle());
		int result = searchService.setPopularWord(pager);

		ModelAndView mv = new ModelAndView();
		List<BookVO> ar = searchService.getSearchDetail(searchDetailPager);
		long count = searchService.getSearchDetailCount(searchDetailPager);
		mv.addObject("list", ar);
		mv.addObject("count", count);
		mv.addObject("pager", searchDetailPager);
		mv.setViewName("search/detail");
		log.info("list의 사이즈 : {}", ar.size());
		log.info("getKind : {}", searchDetailPager.getKind());
		
		if(ar.size()==0) {
			mv.addObject("message", "검색결과가가 없습니다.");
		}
		
		return mv;
	}
	
	@GetMapping("category")
	public String getCategory()throws Exception{
		return "search/category";
	}
	
	@GetMapping("categoryResult")
	public ModelAndView getSearchCategory(Pager pager, BookVO bookVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<BookVO> ar = searchService.getSearchCategory(pager, bookVO);
		long count = searchService.getSearchCategoryCount(pager, bookVO);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.addObject("category", bookVO.getCategory());
		mv.addObject("count", count);
		mv.setViewName("search/category");
		
		return mv;
	}
	
	@GetMapping("newBook")
	public ModelAndView getNewbook(@RequestParam(value="perPage", defaultValue ="20") Long perPage)throws Exception{
		ModelAndView mv = new ModelAndView();
		Pager pager = new Pager();
		pager.setPerPage(perPage);
		List<BookVO> ar = searchService.getSearchNewBook(pager);
		mv.addObject("list", ar);
		mv.setViewName("search/newBook");
		return mv;
	}

}
