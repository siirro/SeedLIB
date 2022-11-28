package com.seed.lib;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.seed.lib.studyroom.StudyRoomService;

@Controller

public class HomeController {
	
	@Autowired
	private StudyRoomService roomService;
	
	@GetMapping("/admin")
	@ResponseBody
	public String admin() throws Exception {
		return "admin Role";	
	}
	

	@GetMapping("/user")
	@ResponseBody
	public String member()throws Exception {
	
		return "Member Role";
	}

	
	@GetMapping("/")
	public String setHome() throws Exception{
		roomService.changeAllSeat();
		return "index";
	}
	
	@GetMapping("/test")
	public String setTest() {
		return "test";
	}
}
