package com.seed.lib.program;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.admin.program.AdProgramVO;
import com.seed.lib.util.ProgramPager;

@Mapper
public interface ProgramMapper {
	
	//목록
	public List<AdProgramVO> getList (ProgramPager pager) throws Exception;
	
	//곧 신청 마감하는 프로그램
	public List<AdProgramVO> getSoonList (AdProgramVO apVO) throws Exception;
	
	//상세페이지
	public AdProgramVO getDetail (AdProgramVO apVO) throws Exception;
	
	//프로그램 신청하기 - insert
	public int setAdd (MemberProgramVO mpVO) throws Exception;
	
	//프로그램 신청하기 - update
	public int setUpdate (MemberProgramVO mpVO) throws Exception;
	
	//신청상태 확인 - 1/0
	public int getMyState (MemberProgramVO mpVO) throws Exception;
	
	//신청여부 확인 - 잇없 카운트
	public int getMyCount (MemberProgramVO mpVO) throws Exception;
	
	//신청취소
	public int setDel (MemberProgramVO mpVO) throws Exception;
	
	//승인하면 승인여부 업뎃
	public int setStateUpdate (MemberProgramVO mpVO)throws Exception;
	
	//--------------- 마이페이지 ---------------
	//신청 목록
	public List<AdProgramVO> getMyPro (ProgramPager pager) throws Exception;
	
	//--------------- Mapper ---------------
	public Long getCount (ProgramPager pager) throws Exception;
	
}
