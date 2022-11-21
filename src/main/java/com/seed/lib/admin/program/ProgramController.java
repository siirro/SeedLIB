package com.seed.lib.admin.program;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/program/*")
public class ProgramController {

	@Autowired
	private ProgramService programService;
	
	@GetMapping("proAdd")
	public String setProgramAdd()throws Exception{
		return "admin/program/proAdd";
	}
	
	@PostMapping("proAdd")
	public String setProgramAdd(ProgramVO programVO, String psDt, String psTime, String plDt,
								String plTime, String name, String teacher)throws Exception{
		
		int result = programService.setProgramAdd(programVO, psDt, psTime, plDt, plTime, name, teacher);
		
		if(result > 0) {
			return "admin/program/proList";
		}
		
		return "admin/program/proAdd";
	}
	
}
