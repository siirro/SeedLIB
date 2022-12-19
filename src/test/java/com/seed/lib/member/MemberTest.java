package com.seed.lib.member;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootTest
class MemberTest {

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Test
	void test() throws Exception {
		MemberVO memberVO =new MemberVO();
		memberVO.setUserName("admin0");
		memberVO.setPassword(passwordEncoder.encode("admin0"));
		memberVO.setName("admin");
		memberVO.setEmail("asf@asdf");
		memberVO.setGender("여");
		memberVO.setPhone("0102472389");
		memberVO.setPost("aasf");
		memberVO.setAddress1("asdf");
		memberVO.setAddress2("aasdff");
		
		int result= mapper.setJoin(memberVO);
		assertEquals(1, result);
	
	}

}
