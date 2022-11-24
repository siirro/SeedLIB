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

import com.seed.lib.donation.DonationService;
import com.seed.lib.donation.DonationVO;
import com.seed.lib.hope.HopeService;
import com.seed.lib.hope.HopeVO;
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
		
		List<StudyDetailVO> sdl = roomService.getSeatMany(userName);
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
	
}
