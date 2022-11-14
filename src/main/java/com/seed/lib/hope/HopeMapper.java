package com.seed.lib.hope;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HopeMapper {

	public int setHope(HopeVO hopeVO) throws Exception;
	public int setDeleteHope(HopeVO hopeVO) throws Exception;
	public List<HopeVO> getHopeList(String userName) throws Exception;
	
}
