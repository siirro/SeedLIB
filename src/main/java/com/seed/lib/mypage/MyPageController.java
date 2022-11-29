package com.seed.lib.mypage;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookVO;
import com.seed.lib.book.loan.BookLoanService;
import com.seed.lib.book.loan.BookLoanVO;
import com.seed.lib.donation.DonationService;
import com.seed.lib.donation.DonationVO;
import com.seed.lib.hope.HopeService;
import com.seed.lib.hope.HopeVO;
import com.seed.lib.studyroom.StudyDetailVO;
import com.seed.lib.studyroom.StudyRoomService;
import com.seed.lib.util.BookLoanPager;
import com.seed.lib.util.FullCalendarVO;
import com.seed.lib.util.HdPager;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("mypage")
@Slf4j
public class MyPageController {
	@Autowired
	private HopeService hopeService;
	@Autowired
	private DonationService donationService;
	@Autowired
	private StudyRoomService roomService;
	@Autowired
	private BookLoanService loanService;
	
	@GetMapping("myIndex")
	public void getIndex() throws Exception{
		
	}
	

	
	
	@GetMapping("hopeList")
	public ModelAndView setHList(HdPager hdPager)throws Exception{
		//세션으로 아이디 받아야됨!!!!!!!!!!!
		ModelAndView mv = new ModelAndView();
		hdPager.setUserName("id1");
		List<HopeVO> hl = hopeService.getHopeList(hdPager);
		mv.addObject("hlist", hl);
		mv.addObject("pager", hdPager);
		return mv;
	}
	
	@PostMapping("hopeCancel")
	@ResponseBody
	public int setDeleteHope(@RequestBody HopeVO hopeVO) throws Exception{
		log.info("@@@@@@@@@@@@@@@@@@@@@@cancel:{}",hopeVO.getHopNum());
		int result = hopeService.setUpdateHope(hopeVO);		
		return result;
	}
	
	@GetMapping("donList")
	public ModelAndView setDList(HdPager hdPager)throws Exception{
		//세션으로 아이디 받아야됨!!!!!!!!!!!
		ModelAndView mv = new ModelAndView();
		hdPager.setUserName("id1");
		List<DonationVO> dl = donationService.getDonList(hdPager);
		mv.addObject("dlist", dl);
		mv.addObject("pager", hdPager);
		return mv;
	}
	
	@GetMapping("seatHistory")
	public ModelAndView getSeatHistory (String userName) throws Exception{
		
		List<StudyDetailVO> sdl = roomService.getSeatHistory(userName);
		List<FullCalendarVO> cl = new ArrayList<>();
		ModelAndView mv = new ModelAndView();
		for(StudyDetailVO s: sdl) {
			FullCalendarVO calendarVO = new FullCalendarVO();
			calendarVO.setId(s.getSeatNum().toString());
			calendarVO.setTitle(s.getRoomName());
			calendarVO.setStart(s.getRvDate());
			calendarVO.setDisplay("background");
			calendarVO.setClassNames(s.getRoomName()+"-"+s.getSeatNum()+"-"+s.getRvAble());
			cl.add(calendarVO);
		}
		mv.addObject("cl", cl);		
		return mv;
	}
	
	
	//대출 목록
	@GetMapping("bookLoan")
	public ModelAndView getLoanList (BookLoanPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> li = loanService.getLoanList(pager);
		mv.addObject("li", li);
		mv.setViewName("myPage/bookLoan");
		
		return mv;
	}
	
	//대출 이력 목록
	@GetMapping("bookLoanHistory")
	public ModelAndView getLoanHistoryList (BookLoanPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> li = loanService.getLoanList(pager);
		mv.addObject("li", li);
		mv.setViewName("mypage/bookLoan");
		
		return mv;
	}
	
	//대출 연장 - 최대 2번
	@PostMapping("extension")
	public String setExtension (BookLoanVO loVO) throws Exception{
		// 연장 횟수가 0, 1일때만 신청 가능 -> setExtension -> 저장 후 +1 리턴
		// 2이면 불가능 -> 3 리턴
		BookLoanVO loanVO = new BookLoanVO();
		//만기일 변경
		//Date date = loanVO.getLoanLDate().after();
		//loanVO.setLoanLDate(date);
		
		//연장횟수 변경
		loanVO.setExtension(loanVO.getExtension()+1);
		return "redirect:./bookLoan";
	}	
	
	//예약 목록
	@GetMapping("bookReserve")
	public ModelAndView getReList (BookLoanPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> li = loanService.getReList(pager);
		mv.addObject("li", li);
		mv.setViewName("mypage/bookReserve");
		
		return mv;
	}
	
	//상호대차 목록
	@GetMapping("bookMutual")
	public ModelAndView getMuList (BookLoanPager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<BookVO> li = loanService.getMuList(pager);
		mv.addObject("li", li);
		mv.setViewName("mypage/bookMutual");
		
		return mv;
	}
	
}
