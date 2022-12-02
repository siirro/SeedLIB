package com.seed.lib.admin.program;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.util.HdPager;

@Mapper
public interface ProgramMapper {
	
	// 문화프로그램 삭제
	public int setProgramDelete(ProgramVO programVO)throws Exception;
	
	// 문화프로그램 수정
	public int setProgramUpdate(ProgramVO programVO)throws Exception;
	
	// 문화프로그램 상세정보
	public ProgramVO getProgramDetail(ProgramVO programVO)throws Exception;
	
	// 문화프로그램 페이징처리 - 전체 수
	public Long getProTotalCount(HdPager hdPager)throws Exception;
	
	// 문화프로그램 목록 조회
	public List<ProgramVO> getProgramList(HdPager hdPager)throws Exception;

	// 문화프로그램 추가
	public int setProgramAdd(ProgramVO programVO)throws Exception;
	
}
