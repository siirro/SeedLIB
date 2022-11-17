package com.seed.lib.admin.program;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProgramService {

	@Autowired
	private ProgramMapper programMapper;
	
	public int setProgramAdd(ProgramVO programVO)throws Exception{
		return programMapper.setProgramAdd(programVO);
	}
	
}
