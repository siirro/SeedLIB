package com.seed.lib;

import java.util.Enumeration;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nimbusds.jose.proc.SecurityContext;
import com.seed.lib.member.MemberVO;
import com.seed.lib.studyroom.StudyRoomService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
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
	public String setHome(HttpSession session) throws Exception{
		Enumeration<String> en =session.getAttributeNames();
		
		while(en.hasMoreElements()) {
			String key = en.nextElement();
			log.info("key=>{}",key);
			
		}
		
		SecurityContextImpl context = (SecurityContextImpl)session.getAttribute("SPRING_SECURITY_CONTEXT");
		if(context != null) {
		log.info("context=>{}",context);
		}
		int result = roomService.changeAllSeat();
		log.info("changeSeat:{}", result);
		return "index";
	}
	
	@GetMapping("/test")
	public String setTest() {
		return "test";
	}
}
