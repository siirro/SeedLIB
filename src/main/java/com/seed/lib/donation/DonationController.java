package com.seed.lib.donation;



import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


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
	
	@PostMapping("setDon")
	@ResponseBody
	public int setDon(@RequestBody DonationVO donationVO)throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("libNum", donationVO.getLibVO().getLibNum());
		int result = donationService.setDon(donationVO, map);
		return result;
	}
	
}
