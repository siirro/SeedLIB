package com.seed.lib.admin.program;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProgramMapper {

	public int setProgramAdd(ProgramVO programVO)throws Exception;
	
}
