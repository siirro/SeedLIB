package com.seed.lib.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/guide/*")
public class BoardController {
	
	@GetMapping("manners")
	public String Manners() throws Exception{
		
		return"guide/manners";
	}
	
	@GetMapping("time")
	public String Time() throws Exception{
		return "guide/time";
	}

	
	@GetMapping("convenience")
	public String Convenience() throws Exception{
		return "guide/convenience";
	}

	
	@GetMapping("rule")
	public String Rule() throws Exception{
		return "guide/rule";
	}


}
