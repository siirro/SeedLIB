package com.seed.lib.admin.program;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.seed.lib.util.DateUtil;

@SpringBootTest
class ProgramServiceTest {

	@Autowired
	private ProgramService programService;
	
	//@Test
	void setProgramAddTest()throws Exception {
		ProgramVO programVO = new ProgramVO();
		DateUtil dateUtil = new DateUtil();
		programVO.setProName("독서");
		programVO.setTotal(30L);
		
		//2022-11-04 12:50:01
		Date prsDate = dateUtil.parseDate("2022-08-02 24:01:01");
		programVO.setPrsDate(prsDate);
		Date prlDate = dateUtil.parseDate("2022-08-23 24:01:01");
		programVO.setPrlDate(prlDate);
		Date psDate = dateUtil.parseDate("2022-09-02 09:00:00");
		programVO.setPsDate(psDate);
		Date plDate = dateUtil.parseDate("2022-09-02 11:00:00");
		programVO.setPlDate(plDate);
		programVO.setTarget("학생");
		programVO.setProTeacher("강사");
		programVO.setProPlace("씨앗도서관");
		programVO.setProCate("특강");
		
		int result = programService.setProgramAdd(programVO);
		
		assertEquals(1, result);
		
	}

}
