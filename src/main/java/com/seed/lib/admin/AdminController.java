package com.seed.lib.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	
	// 어드민 로그인 페이지
	@GetMapping("adLogin")
	public String getAdLogin()throws Exception{
		return "admin/adLogin";
	}
	
	// 어드민 메인 페이지
	@GetMapping("main")
	public String getAdMain()throws Exception{
		return "admin/main";
	}
	
}