package com.seed.lib.studyroom;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("studyroom")
public class StudtRoomController {
	
	@GetMapping("roomInfo")
	public ModelAndView getRoomInfo() throws Exception{
		List<Integer> rl = new ArrayList<>();
		for(int i=1; i<101; i++) {
			rl.add(i);			
		};
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", rl);
		return mv;
	}

}
