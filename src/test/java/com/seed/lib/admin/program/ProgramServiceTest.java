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
	
	@Test
	void setProgramAddTest()throws Exception {
		String psDt = "2022-11-23";
		String psTime = "09:00";
		String plDt = "2022-11-23";
		String plTime = "10:00";
		String name = "효경";
		String teacher = "강사님";
		ProgramVO programVO = new ProgramVO();
		DateUtil dateUtil = new DateUtil();
		programVO.setProCate("특강");
		programVO.setRecStatus(2L);
		programVO.setProName("책이야기");
		programVO.setTarget("학생");
		programVO.setTotal(30L);
		Date prsDate = dateUtil.parseDate("2022-08-02 00:00:00");
		programVO.setPrsDate(prsDate);
		Date prlDate = dateUtil.parseDate("2022-08-23 00:00:00");
		programVO.setPrlDate(prlDate);
//		Date psDate = dateUtil.parseDate("2022-09-02 09:00:00");
//		programVO.setPsDate(psDate);
//		Date plDate = dateUtil.parseDate("2022-09-09 11:00:00");
//		programVO.setPlDate(plDate);
		programVO.setProPlace("씨앗도서관");
		
		int result = programService.setProgramAdd(programVO, psDt, psTime, plDt, plTime, name, teacher);
		
		assertEquals(1, result);
		
	}

}
