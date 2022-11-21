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
	
	@GetMapping("add")
	public String setProgramAdd()throws Exception{
		return "admin/program/add";
	}
	
	@PostMapping("add")
	public String setProgramAdd(ProgramVO programVO)throws Exception{
		
		int result = programService.setProgramAdd(programVO);
		
		if(result > 0) {
			return "admin/program/list";
		}
		
		return "admin/program/add";
	}
	
}
