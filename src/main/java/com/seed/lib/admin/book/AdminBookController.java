package com.seed.lib.admin.book;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookService;
import com.seed.lib.book.BookVO;
import com.seed.lib.donation.DonationVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.util.AdbookPager;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/book/*")
@Slf4j
public class AdminBookController {
	
	@Autowired
	private AdminBookService adminBookService;
	
	@Autowired
	private BookService bookService;
	
	// 도서 목록 조회
	@GetMapping("boList")
	public ModelAndView getAdBookList(AdbookPager adbookPager)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> bookVOs = adminBookService.getAdBookList(adbookPager);
		
		if(bookVOs.size() != 0) {
			
			mv.addObject("list", bookVOs);
			mv.addObject("pager", adbookPager);
			
		}
		
		mv.setViewName("admin/book/boList");
		
		return mv;
	}
	
////////////////////////////////////////////////////////////////////////////////	
	
	// 도서 추가
	@GetMapping("boAdd")
	public String setBookAddFrm(AdbookPager adbookPager)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
	 	List<BookVO> bookVOs = adminBookService.getAdBookList(adbookPager);
	 	
	 	mv.addObject("boList", bookVOs);
	 	
		return "admin/book/boAdd";
	}
	
	@PostMapping("boAdd")
	@ResponseBody
	public Map<String, Object> setBookAdd(@RequestBody BookVO bookVO)throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("isbn", bookVO.getIsbn());
		map.put("libNum", bookVO.getLibVO().getLibNum());
		int result = adminBookService.setBookAdd(bookVO, map);
		if(result>0) {
			map.put("result", result);
			map.put("msg", "도서 입고 처리를 완료했습니다");
		}else {
			map.put("result", result);
			map.put("msg", "이미 입고된 책입니다\n수량을 수정하시겠습니까?");
		}
		return map;
	}
	
	@PostMapping("updateQuantity")
	@ResponseBody
	public Map<String, Object> updateQuantity (@RequestBody BookVO bookVO) throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("isbn", bookVO.getIsbn());
		map.put("libNum", bookVO.getLibVO().getLibNum());
		int result = adminBookService.updateQuantity(bookVO, map);
		if(result>0) {
			map.put("result", result);
			map.put("msg", "입고 도서 수량 수정 처리를 완료했습니다");
		}else {
			map.put("result", result);
			map.put("msg", "입고 도서 수량 수정 처리를 실패했습니다");
		}
		return map;
	}
	
	@GetMapping("boUpdate")
	public ModelAndView setBookUpdateFrm(String isbn) throws Exception{
		ModelAndView mv = new ModelAndView();
		BookVO bookVO = new BookVO();
		bookVO.setIsbn(Long.parseLong(isbn));
		bookVO = bookService.getBookInfo(bookVO);
		mv.addObject("bookVO", bookVO);
		return mv;
	}
	
	@PostMapping("boUpdate")
	@ResponseBody
	public Map<String, Object> setBookUpdate(@RequestBody BookVO bookVO) throws Exception{
		Map<String, Object> map = new HashMap<>();
		int result = adminBookService.setBookUpdate(bookVO);
		if(result>0) {
			map.put("result", result);
			map.put("isbn", bookVO.getIsbn());
			map.put("url", "../../book/detail?isbn="+bookVO.getIsbn());
			map.put("msg", "도서 수정 처리를 완료했습니다");
		}else {
			map.put("result", result);
			map.put("msg", "도서 수정 처리를 실패했습니다");
		}
		return map;
	}
	
	@PostMapping("boDelete")
	@ResponseBody
	public Map<String, Object> setBookDelete(String isbn) throws Exception{
		Map<String, Object> map = new HashMap<>();
		int result = adminBookService.setBookDelete(isbn);
		if(result>0) {
			map.put("result", result);
			map.put("msg", "도서 삭제 처리를 완료했습니다");
		}else {
			map.put("result", result);
			map.put("msg", "도서 삭제 처리를 실패했습니다");
		}
		return map;
	}
	
}
