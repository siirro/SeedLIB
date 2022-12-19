package com.seed.lib.book.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/print/*")
@Slf4j
public class BoOrderController {
	
	@Autowired
	private BoOrderService boOrderService;
	
	@PostMapping("boOrder")
	@ResponseBody
	public String setBoOrder()throws Exception{
		return "print/boOrder";
	}
	
	// 바구니 제본신청 목록
	@GetMapping("boCart")
	public ModelAndView getBoCartList()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		BookPrintVO bookPrintVO = new BookPrintVO();
		bookPrintVO.setUserName("member");
		
		List<BookPrintVO> bookPrintVOs = boOrderService.getBoCartList(bookPrintVO);
		
		mv.addObject("list", bookPrintVOs);
		mv.setViewName("print/boCart");
		
		return mv;
	}
	
	// 도서 바구니 추가	
	@PostMapping("boAdCart")
	public ModelAndView setBoAdCart(BookPrintVO bookPrintVO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		int result = 0;
		String title = "실패..";
		String text = "바구니 추가를 실패했습니다.";
		String icon = "error";
		String button = "확인";
		String url = "redirect:../";
		
		result = boOrderService.setBoCart(bookPrintVO);
		
		if(result > 0) {
			
			result = 1;
			title = "성공!!";
			text = "바구니 추가를 성공했습니다";
			icon = "success";
			url="../print/boCart";
			
		}
		
		mv.addObject("title", title);
		mv.addObject("text", text);
		mv.addObject("icon", icon);
		mv.addObject("button", button);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		return mv;
	}
	
}
