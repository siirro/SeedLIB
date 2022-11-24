package com.seed.lib.studyroom;

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

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("studyroom")
@Slf4j
public class StudyRoomController {
	
	@Autowired
	private StudyRoomService service;
	
	
	@GetMapping("roomList")
	public void getRoomList() throws Exception{
		
	}
	
	
	@GetMapping("roomInfo")
	public ModelAndView getRoomInfo(String roomName) throws Exception{
		StudyDetailVO detailVO = new StudyDetailVO(); 
		List<StudyDetailVO> sdl = service.getSeatMany(roomName);
//		List<StudyDetailVO> sdl = service.getUseSeat(roomName);
		String changeName = "";
		
		switch(roomName) {
	    case "WROOM": changeName = "일반열람실(여)";
	         break;
	    case "MROOM": changeName = "일반열람실(남)";
	         break;
	    case "NROOM": changeName = "노트북실";
        break;     
	}				
		for(StudyDetailVO s: sdl) {
			StudyRoomVO roomVO = new StudyRoomVO();
			roomVO.setRoomName(changeName);
			roomVO.setLastNum(s.getRoomVO().getLastNum());
			s.setRoomVO(roomVO);
		}
		ModelAndView mv = new ModelAndView();
//		mv.addObject("studyroom", studyRoomVO);
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
	

	
}
