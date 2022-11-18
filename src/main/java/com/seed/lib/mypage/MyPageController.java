package com.seed.lib.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.hope.HopeService;
import com.seed.lib.hope.HopeVO;

@Controller
@RequestMapping("mypage")
public class MyPageController {
	@Autowired
	private HopeService hopeService;
	
	
	@GetMapping("myIndex")
	public void getIndex() throws Exception{
		
	}
	
	@GetMapping("hopeList")
	public ModelAndView setHList(String userName)throws Exception{
		ModelAndView mv = new ModelAndView();
		userName = "id1";
		List<HopeVO> hl = hopeService.getHopeList(userName);
		mv.addObject("hlist", hl);
		for(HopeVO h: hl) {
			System.out.println(h.getHopWriter());			
		}
		return mv;
	}
	
	@PostMapping("hopeDelete")
	@ResponseBody
	public int setDeleteHope(HopeVO hopeVO) throws Exception{
		int result = hopeService.setDeleteHope(hopeVO);		
		return result;
	}
	
}
