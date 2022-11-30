package com.seed.lib.mypage;

//import java.sql.Date;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.book.BookVO;
import com.seed.lib.book.loan.BookLoanService;
import com.seed.lib.book.loan.BookLoanVO;
import com.seed.lib.donation.DonationService;
import com.seed.lib.donation.DonationVO;
import com.seed.lib.hope.HopeService;
import com.seed.lib.hope.HopeVO;
import com.seed.lib.member.MemberService;
import com.seed.lib.member.MemberVO;
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
  @Autowired
	private MemberService memberService;
	
	@GetMapping("myIndex")
	public ModelAndView getIndex(HttpSession session) throws Exception{
		ModelAndView mv =new ModelAndView();
		MemberVO memberVO =new MemberVO();
		
		
		return mv;
	}
	
	@GetMapping("memberCheck")
	public String memberCheck() throws Exception {
	
     return "mypage/memberCheck"; 
     
	}
	@GetMapping("memberModify")
	public ModelAndView setUpdate(MemberVO memberVO,ModelAndView mv,HttpSession session)throws Exception {
		memberVO= (MemberVO)session.getAttribute("memberVO");
		mv.addObject("memberVO",memberVO);
		mv.setViewName("mypage/memberModify");
		return mv;
	}
	
	@PostMapping("memberModify")
	public ModelAndView setUpdate(MemberVO memberVO)throws Exception{
		int result = memberService.setUpdate(memberVO);
		ModelAndView mv =new ModelAndView();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("");
		return mv;
		
	}
	
	@GetMapping("hopeList")
	public ModelAndView setHList(HdPager hdPager, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
			MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
			hdPager.setUserName(memberVO.getUserName());
			List<HopeVO> hl = hopeService.getHopeList(hdPager);
			mv.addObject("hlist", hl);
			mv.addObject("pager", hdPager);
			return mv;
	}
	
	@PostMapping("hopeCancel")
	@ResponseBody
	public int setDeleteHope(@RequestBody HopeVO hopeVO) throws Exception{
		int result = hopeService.setUpdateHope(hopeVO);		
		return result;
	}
	
	@GetMapping("donList")
	public ModelAndView setDList(HdPager hdPager, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
			MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
			hdPager.setUserName(memberVO.getUserName());
			List<DonationVO> dl = donationService.getDonList(hdPager);
			mv.addObject("dlist", dl);
			mv.addObject("pager", hdPager);
			return mv;
	}
	
	@GetMapping("seatHistory")
	public ModelAndView getSeatHistory (HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
			MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
			String userName = memberVO.getUserName();
			log.info(userName);
			List<StudyDetailVO> sdl = roomService.getSeatHistory(userName);
			List<FullCalendarVO> cl = new ArrayList<>();
			JSONArray js = new JSONArray();
			for(StudyDetailVO s: sdl) {
				FullCalendarVO calendarVO = new FullCalendarVO();
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("id", s.getSeatNum().toString());
				jsonObject.put("title", s.getSeatNum().toString());
				jsonObject.put("start", s.getRvDate().toString());
				jsonObject.put("display", "background");
				jsonObject.put("classNames", "room-"+s.getRvAble());
				js.add(jsonObject);
			}
			
			mv.addObject("cl", js);		
			return mv;
	}
	
	@PostMapping("exitSeat")
	@ResponseBody
	public int exitMySeat(String exitNum, String userName) throws Exception{
		StudyDetailVO detailVO = new StudyDetailVO();
		detailVO.setUserName(userName);
		detailVO.setSeatNum(Integer.parseInt(exitNum));
		return roomService.exitMySeat(detailVO);
	}
	
	
	//오늘 날짜 가져오기
	public static String getCurrentDate() {
		Date today = new java.util.Date();
		Locale currentLocale = new Locale("KOREAN", "KOREA");
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat formatter = new SimpleDateFormat(pattern, currentLocale);
		return formatter.format(today);
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
