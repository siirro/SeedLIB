package com.seed.lib.admin.program;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.util.DateUtil;
import com.seed.lib.util.HdPager;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/admin/program/*")
@Slf4j
public class ProgramController {

	@Autowired
	private ProgramService programService;
	
	@GetMapping("proDelete")
	public ModelAndView setProgramDelete(ProgramVO programVO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		int result = 0;
		String title = "실패..";
		String text = "프로그램삭제를 실패했습니다";
		String icon = "error";
		String button = "확인";
		String url = "./program/proList";
		
		result = programService.setProgramDelete(programVO);
		
		if(result > 0) {
			
			result = 1;
			title = "성공!!";
			text = "프로그램삭제를 성공했습니다";
			icon = "success";
			url="../program/proList";
			
		}
		
		mv.addObject("title", title);
		mv.addObject("text", text);
		mv.addObject("icon", icon);
		mv.addObject("button", button);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@GetMapping("proUpdate")
	public ModelAndView setProgramUpdateView(ProgramVO programVO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		DateUtil dateUtil = new DateUtil();
		
		programVO = programService.getProgramDetail(programVO);
		
		mv.addObject("proVO", programVO);
		mv.setViewName("admin/program/proUpdate");
		
		return mv;
	}
	
	@PostMapping("proUpdate")
	public ModelAndView setProgramUpdate(ProgramVO programVO)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		int result = 0;
		String title = "실패..";
		String text = "프로그램수정을 실패했습니다!";
		String icon = "error";
		String button = "확인";
		String url = "./program/proUpdate";
		
		result = programService.setProgramUpdate(programVO);
		
		if(result > 0) {
			
			result = 1;
			title = "성공!!";
			text = "프로그램수정을 성공했습니다!";
			icon = "success";
			url="../program/proUpdate";
			mv.addObject("proVO", programVO);
			
		}
		
		mv.addObject("title", title);
		mv.addObject("text", text);
		mv.addObject("icon", icon);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@GetMapping("proDetail")
	public String getProgramDetail(ProgramVO programVO)throws Exception{
		return "admin/program/proDetail";
	}
	
	@GetMapping("proList")
	public ModelAndView getProgramList(HdPager hdPager)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<ProgramVO> ar = programService.getProgramList(hdPager);
		mv.addObject("list", ar);
		mv.addObject("pager", hdPager);
		mv.setViewName("admin/program/proList");
		
		return mv;
	}
	
	@GetMapping("proAdd")
	public String setProgramAdd()throws Exception{
		return "admin/program/proAdd";
	}
	
	@PostMapping("proAdd")
	public ModelAndView setProgramAdd(ProgramVO programVO, String psDt, String psTime, String plDt,
								String plTime, String name, String teacher)throws Exception{
		
		ModelAndView mv = new ModelAndView();
		int result = 0;
		String title = "실패..";
		String text = "프로그램등록을 실패했습니다!";
		String icon = "error";
		String button = "확인";
		String url = "./program/proAdd";
		
		result = programService.setProgramAdd(programVO, psDt, psTime, plDt, plTime, name, teacher);
		
		if(result > 0) {
			
			result = 1;
			title = "성공!!";
			text = "프로그램등록을 성공했습니다!";
			icon = "success";
			button = "확인";
			url="../program/proList";
			
		}
		
		mv.addObject("title", title);
		mv.addObject("text", text);
		mv.addObject("icon", icon);
		mv.addObject("button", button);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		return mv;
	}
	
}
