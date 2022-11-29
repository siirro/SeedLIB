package com.seed.lib.book.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoOrderController {

	@Autowired
	private BoOrderService boOrderService;
	
	@GetMapping()
	public String setBoOrder()throws Exception{
		
		return "";
	}
	
}
