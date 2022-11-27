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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.donation.DonationService;
import com.seed.lib.donation.DonationVO;
import com.seed.lib.hope.HopeService;
import com.seed.lib.hope.HopeVO;
import com.seed.lib.member.MemberVO;
import com.seed.lib.studyroom.StudyDetailVO;
import com.seed.lib.studyroom.StudyRoomService;
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
	
	
	@GetMapping("myIndex")
	public void getIndex() throws Exception{
		
	}
	

	
	
	@GetMapping("hopeList")
	public ModelAndView setHList(HdPager hdPager, HttpSession session)throws Exception{
		//세션으로 아이디 받아야됨!!!!!!!!!!!
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("memberVO") == null) {
			mv.setViewName("redirect:../member/login");
			return mv;
		} else {
			MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
			hdPager.setUserName(memberVO.getUserName());
			List<HopeVO> hl = hopeService.getHopeList(hdPager);
			mv.addObject("hlist", hl);
			mv.addObject("pager", hdPager);
			return mv;
		}
	}
	
	@PostMapping("hopeCancel")
	@ResponseBody
	public int setDeleteHope(@RequestBody HopeVO hopeVO) throws Exception{
		log.info("@@@@@@@@@@@@@@@@@@@@@@cancel:{}",hopeVO.getHopNum());
		int result = hopeService.setUpdateHope(hopeVO);		
		return result;
	}
	
	@GetMapping("donList")
	public ModelAndView setDList(HdPager hdPager, HttpSession session)throws Exception{
		//세션으로 아이디 받아야됨!!!!!!!!!!!
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("memberVO") == null) {
			mv.setViewName("redirect:../member/login");
			return mv;
		} else {
			MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
			hdPager.setUserName(memberVO.getUserName());
			List<DonationVO> dl = donationService.getDonList(hdPager);
			mv.addObject("dlist", dl);
			mv.addObject("pager", hdPager);
			return mv;
			}
	}
	
	@GetMapping("seatHistory")
	public ModelAndView getSeatHistory (HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("memberVO") == null) {
			mv.setViewName("redirect:../member/login");
			return mv;
		} else {
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
	}
	
	@PostMapping("exitSeat")
	@ResponseBody
	public int exitMySeat(String exitNum, String userName) throws Exception{
		log.info("uN:{}",userName,exitNum);
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
	
}
