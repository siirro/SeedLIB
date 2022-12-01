package com.seed.lib.studyroom;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.member.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("studyroom")
@Slf4j
public class StudyRoomController {
	
	@Autowired
	private StudyRoomService service;
	
	
	@GetMapping("roomList")
	public void getRoomList() throws Exception{
		service.changeAllSeat();
		
	}
	
	@PostMapping("roomList")
	@ResponseBody
	public Map<String, String> sendRoomList(String roomNum, HttpSession session) throws Exception{
		log.info("$$$$$$$$$$$$$$$$$$$rn:{}",roomNum);
		Map<String, String> mv = new HashMap<>();
				MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
					if(memberVO.getGender().equals("여")&&roomNum.equals("1")) {
						mv.put("msg", "[일반열람실(여)] 좌석 정보를 불러옵니다");
						mv.put("url", "./roomInfo?roomNum=1");
					} else if(memberVO.getGender().equals("남")&&roomNum.equals("2")) {
						mv.put("msg", "[일반열람실(남)] 좌석 정보를 불러옵니다");
						mv.put("url", "./roomInfo?roomNum=2");
					} else if(roomNum.equals("3")) {
						mv.put("msg", "[노트북실] 좌석 정보를 불러옵니다");
						mv.put("url", "./roomInfo?roomNum=3");
					} else {
						mv.put("msg", "본인의 성별에 적합한 열람실을 다시 선택해주세요");
						mv.put("url", "/studyroom/roomList");
					}
			return mv;
			}

	
	@GetMapping("roomInfo")
	public ModelAndView getRoomInfo(String roomNum) throws Exception{
		StudyDetailVO detailVO = new StudyDetailVO(); 
		List<StudyDetailVO> sdl = service.getSeatMany(roomNum);		
		for(StudyDetailVO s: sdl) {
			StudyRoomVO roomVO = new StudyRoomVO();
			roomVO.setRoomName(s.getRoomVO().getRoomName());
			roomVO.setLastNum(s.getRoomVO().getLastNum());
			s.setRoomVO(roomVO);
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("useList", sdl);
		return mv;
	}
	
	@GetMapping("roomPop/**")
	public ModelAndView getRoomRev(String roomName, int seatNum) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("seatNum", seatNum);
		mv.addObject("roomName", roomName);
		return mv;
	}

	@PostMapping("setSeat")
	@ResponseBody
	public int setMySeat (@RequestBody StudyDetailVO studyDetailVO) throws Exception {
		int result = service.setMySeat(studyDetailVO);
		if(result == 1) {
			return 200;
		} else {
			return result;
		}
	}
	
//////////////////////////////////////////////////////////////////////////////////////////
	
	@GetMapping("locker")
	public void getLocker() throws Exception{
		
	}
	
}
