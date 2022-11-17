package com.seed.lib.admin.program;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class ProgramServiceTest {

	@Autowired
	private ProgramService programService;
	
	@Test
	void setProgramAddTest()throws Exception {
		ProgramVO programVO = new ProgramVO();
		programVO.setProName("독서");
		programVO.setTotal(30L);
	}

}
