package com.seed.lib.donation;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("donation")
public class DonationController {

	@Autowired
	private DonationService donationService;
	
	@GetMapping("donInfo")
	public void donInfo() throws Exception{
		
	}

	@GetMapping("setDon")
	public void setHope()throws Exception{
	}
	
//	@PostMapping("setDon")
//	@ResponseBody
//	public int setHope(@RequestBody HopeVO hopeVO)throws Exception{
//		Map<String, Object> map = new HashMap<>();
//		map.put("isbn", hopeVO.getIsbn());
//		map.put("libNum", hopeVO.getLibVO().getLibNum());
//		hopeVO.setIsbn(Long.parseLong(hopeVO.getIsbn().toString()));
//		int result = hopeService.setHope(hopeVO, map);
//		return result;
//	}
	
}
