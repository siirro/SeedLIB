package com.seed.lib.search;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/search/*")
@Slf4j
public class SearchController {
	
	@GetMapping("simple")
	public String getSearch()throws Exception{
		return "search/simple";
	}

}
