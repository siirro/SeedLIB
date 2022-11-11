package com.seed.lib;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	
	@GetMapping("/")
	public String setHome() {
		return "index";
	}
	
	@GetMapping("/test")
	public String setTest() {
		return "test";
	}
}
