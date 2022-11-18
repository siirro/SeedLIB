package com.seed.lib.admin.program;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/program/*")
public class ProgramController {

	@Autowired
	private ProgramService programService;
	
}
