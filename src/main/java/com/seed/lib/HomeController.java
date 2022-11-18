package com.seed.lib;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	
	
	@GetMapping("/admin")
	@ResponseBody
	public String admin()throws Exception {
	 
		return "admin Role";	
	}
	

	@GetMapping("/user")
	@ResponseBody
	public String member()throws Exception {
	
		return "Member Role";
	}

	
	@GetMapping("/")
	public String setHome() {
		return "index";
	}
	
	@GetMapping("/test")
	public String setTest() {
		return "test";
	}
}
