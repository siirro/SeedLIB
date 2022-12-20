package com.seed.lib;

import java.util.Enumeration;
import javax.servlet.http.HttpSession;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//import com.nimbusds.jose.proc.SecurityContext;
import com.seed.lib.member.MemberVO;
import com.seed.lib.book.BookVO;
import com.seed.lib.search.PopularVO;
import com.seed.lib.search.SearchService;

import com.seed.lib.studyroom.StudyRoomService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {
	
	@Autowired
	private StudyRoomService roomService;
	@Autowired
	private SearchService searchService;
	


		
	
@GetMapping("/")
	public ModelAndView setHome(HttpSession session) throws Exception{
		Enumeration<String> en =session.getAttributeNames();
		
		while(en.hasMoreElements()) {
			String key = en.nextElement();
			log.info("key=>{}",key);
			
		}
		
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
		if(context != null) {
		log.info("context=>{}",context);
		}
		
		ModelAndView mv = new ModelAndView();
		
		List<PopularVO> ar = searchService.getPopularWord();
		List<BookVO> accessionBook = searchService.getAccessionBook();
		List<BookVO> popularBook = searchService.getPopularBook();
		mv.addObject("popular", ar);
		mv.addObject("accessionBook", accessionBook);
		mv.addObject("popularBook", popularBook);
		mv.setViewName("index");
		return mv;
	}
	
	@GetMapping("/test")
	public String setTest() {
		return "test";
	}
}
