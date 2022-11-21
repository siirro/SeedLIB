package com.seed.lib.admin.program;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.util.DateUtil;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProgramService {

	@Autowired
	private ProgramMapper programMapper;
	
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
		log.info("프로그램 데이트 => {} ", programVO.getPsDate());
		
		return programMapper.setProgramAdd(programVO);
	}
	
}
