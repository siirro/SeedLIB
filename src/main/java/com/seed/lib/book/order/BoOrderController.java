package com.seed.lib.book.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/print/*")
@Slf4j
public class BoOrderController {

	@Autowired
	private BoOrderService boOrderService;
	
	@GetMapping("boOrder")
	public String setBoOrder()throws Exception{
		return "print/boOrder";
	}
	
}
