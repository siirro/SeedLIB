package com.seed.lib.admin.program;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.HdPager;

@Mapper
public interface ProgramMapper {

	public int setProgramAdd(ProgramVO programVO)throws Exception;
	
	public List<ProgramVO> getProgramList(HdPager hdPager)throws Exception;
	
	public Long getProTotalCount(HdPager hdPager)throws Exception;
	
}
