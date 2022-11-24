package com.seed.lib.admin.program;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.util.DateUtil;
import com.seed.lib.util.HdPager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProgramService {

	@Autowired
	private ProgramMapper programMapper;
	
	// 프로그램 삭제
	public int setProgramDelete(ProgramVO programVO)throws Exception{
		return programMapper.setProgramDelete(programVO);
	}
	
	// 프로그램 상세정보 수정
	public int setProgramUpdate(ProgramVO programVO)throws Exception{
		
		programVO = programMapper.getProgramDetail(programVO);
		
		int result=0;
		
		if(programVO != null) {
			
			result = programMapper.setProgramUpdate(programVO);
			
		}
		
		return result;
	}
	
	// 프로그램 상세정보 출력
	public ProgramVO getProgramDetail(ProgramVO programVO)throws Exception{
		return programMapper.getProgramDetail(programVO);
	}
	
	// 프로그램 목록 출력
	public List<ProgramVO> getProgramList(HdPager hdPager)throws Exception{
		hdPager.makeRow();
		hdPager.getNum(programMapper.getProTotalCount(hdPager));
		return programMapper.getProgramList(hdPager);
	}
	
	// 프로그램 추가
	public int setProgramAdd(ProgramVO programVO, String psDt, String psTime, String plDt,
							String plTime, String name, String teacher)throws Exception{
		
		// String을 Date타입으로 바꿔주는 객체
		DateUtil dateUtil = new DateUtil();
		// yyyy-MM-dd HH:mm:ss 형식으로 문자열을 만들어줌
		String psDate = psDt+" "+psTime+":00";
		String plDate = plDt+" "+plTime+":00";
		
		// return으로 Date타입을 보내줌
		Date psDate2 = dateUtil.parseDate(psDate);
		Date plDate2 = dateUtil.parseDate(plDate);
		
		programVO.setPsDate(psDate2);
		programVO.setPlDate(plDate2);
		
		// 강사님 이름 합침 000강사, 000선생님 등
		programVO.setProTeacher(name+teacher);
		// 장소는 기본값으로 씨앗도서관 넣어줌
		programVO.setProPlace("씨앗도서관");
		
		return programMapper.setProgramAdd(programVO);
	}
	
}
