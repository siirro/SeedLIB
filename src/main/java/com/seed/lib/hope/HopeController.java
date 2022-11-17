package com.seed.lib.hope;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("hope")
@Slf4j
public class HopeController {
	
//	@Value("${kakao.api.key}")
//	private String apiKey;
//	
	@Autowired
	private HopeService hopeService;
	
	@GetMapping("hopeInfo")
	public void hopeInfo() throws Exception{
		
	}

	@GetMapping("setHope")
	public void setHope()throws Exception{
	}
	
//	@GetMapping("searchHope")
//	@ResponseBody
//	public String searchHope(String result) throws Exception{
//		return apiKey;
//	}
	
	@PostMapping("setHope")
	@ResponseBody
	public int setHope(@RequestBody HopeVO hopeVO)throws Exception{
		hopeVO.setIsbn(Long.parseLong(hopeVO.getIsbn().toString()));
		int result = hopeService.setHope(hopeVO);
		log.info("@@@@@@@@@@RESULT=>{}",result);
		return result;
	}
}
