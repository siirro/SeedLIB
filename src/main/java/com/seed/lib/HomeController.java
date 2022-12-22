package com.seed.lib;

import java.util.Enumeration;
import javax.servlet.http.HttpSession;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//import com.nimbusds.jose.proc.SecurityContext;
import com.seed.lib.member.MemberVO;
import com.seed.lib.mypage.MypageService;
import com.seed.lib.admin.program.AdProgramVO;
import com.seed.lib.book.BookVO;
import com.seed.lib.hope.HopeService;
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
	@Autowired
	private MypageService mypageService;
	@Autowired
	private HopeService hopeService;


		
	
@GetMapping("/")
	public ModelAndView setHome(HttpSession session, MemberVO memberVO) throws Exception{
		Enumeration<String> en =session.getAttributeNames();
		
		while(en.hasMoreElements()) {
			String key = en.nextElement();
			log.info("key=>{}",key);
		}
		
		ModelAndView mv = new ModelAndView();
		
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
		if(context != null) {
			Authentication authentication = context.getAuthentication();
			memberVO  = (MemberVO)authentication.getPrincipal();
			memberVO = mypageService.getMyPage(memberVO);
			log.info("mv:{}", memberVO);
			// 비어있지 않다면 모델앤뷰에 넣기
			if(memberVO != null) {
				mv.addObject("memberVO", memberVO);
				int loanCount = hopeService.getLoanList(memberVO.getUsername());
				mv.addObject("loanCount", loanCount);
			}
		}
		
		List<PopularVO> ar = searchService.getPopularWord();
		List<BookVO> accessionBook = searchService.getAccessionBook();
		List<BookVO> popularBook = searchService.getPopularBook();
		List<AdProgramVO> newProgram = searchService.getNewProgram();
		log.info("뉴프로그램 {}", newProgram);
		mv.addObject("nP", newProgram);
		mv.addObject("popular", ar);
		mv.addObject("vo", memberVO);
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
