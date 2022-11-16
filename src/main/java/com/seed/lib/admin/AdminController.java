package com.seed.lib.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	public String getMain()throws Exception{
		return "admin/main";
	}
	
}