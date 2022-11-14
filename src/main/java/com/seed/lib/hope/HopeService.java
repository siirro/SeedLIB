package com.seed.lib.hope;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HopeService {

	@Autowired
	private HopeMapper hopeMapper;
	
	public int setHope(HopeVO hopeVO) throws Exception{
		return hopeMapper.setHope(hopeVO);
	}
	
	public int setDeleteHope(HopeVO hopeVO) throws Exception{
		return hopeMapper.setDeleteHope(hopeVO);
	}
	
	public List<HopeVO> getHopeList(String userName) throws Exception{
		return hopeMapper.getHopeList(userName);
	}
}
