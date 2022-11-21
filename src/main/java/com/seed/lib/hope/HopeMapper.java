package com.seed.lib.hope;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.HdPager;

@Mapper
public interface HopeMapper {

//검증용
	public int getHaveBook(Map<String, Object> map) throws Exception;
	public int getOverLapBook(Map<String, Object> map) throws Exception;
	public int getMonth(HopeVO hopeVO) throws Exception;
	
//인서트용	
	public int setHope(HopeVO hopeVO) throws Exception;
	public int setHopeStat(HopeVO hopeVO) throws Exception;
	public int setHopeLib(Map<String, Object> map) throws Exception;

//마이페이지용
	public Long getTotalCount(HdPager hdPager) throws Exception;
	public List<HopeVO> getHopeList(HdPager hdPager) throws Exception;

//신청 취소	
	public int setUpdateHope(HopeVO hopeVO) throws Exception;
	
}
