package com.seed.lib.book.order;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.member.MemberVO;

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
	public ModelAndView getBoCartList(HttpSession session)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		BookPrintVO bookPrintVO = new BookPrintVO();
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		
//		bookPrintVO.setUserName(memberVO.getUserName());
		
		memberVO = boOrderService.getBoCartList(memberVO);
		
		mv.addObject("list", memberVO);
		mv.setViewName("print/boCart");
		
		return mv;
	}
	
	// 도서 바구니 추가	
	@PostMapping("boAdCart")
	@ResponseBody
	public int setBoAdCart(BookPrintVO bookPrintVO, HttpSession session)throws Exception{
		
//		ModelAndView mv = new ModelAndView();
		
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		
		bookPrintVO.setUserName(memberVO.getUsername());
		
		log.info("에이작스 했니?");
		log.info("bookPrint {} ", bookPrintVO.getCaAmount());
		log.info("bookPint {} ", bookPrintVO.getBookVO().getIsbn());
		
		int result = boOrderService.setBoCart(bookPrintVO);
		
		
		return result;
	}
	
}
