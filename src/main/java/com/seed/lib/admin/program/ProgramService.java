package com.seed.lib.admin.program;

import java.sql.Date;

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
		
//		DateUtil dateUtil = new DateUtil();
		String psDate = psDt+" "+psTime;
		
//		java.util.Date psDate2 = new java.util.Date(psDate.get);
//		
//		Date rePsDate = new Date(0);
//		
//		log.info("최종 데이트", psDate2);
//		programVO.setPsDate(psDate2);
		
		return 1; //programMapper.setProgramAdd(programVO);
	}
	
}
