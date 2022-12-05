package com.seed.lib.admin.member;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.seed.lib.member.MemberVO;

@SpringBootTest
class AdMemberServiceTest {

	@Autowired
	private AdMemberService adMemberService;
	
	@Test
	void getAdMemberListTest() throws Exception {
		
		List<MemberVO> memberVOs = adMemberService.getAdMemberList();
		
		assertNotEquals(0, memberVOs.size());
		
	}

}
