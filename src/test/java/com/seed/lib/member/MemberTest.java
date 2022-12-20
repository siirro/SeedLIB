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
		memberVO.setUserName("adhyo");
		memberVO.setPassword(passwordEncoder.encode("adhyo"));
		memberVO.setName("admin");
		memberVO.setEmail("adhyo@naver.com");
		memberVO.setGender("여");
		memberVO.setPhone("0102472389");
		memberVO.setPost("aasf");
		memberVO.setAddress1("asdf");
		memberVO.setAddress2("aasdff");
		memberVO.setBirth(null);
		int result= mapper.setJoin(memberVO);
		assertEquals(1, result);
	
	}

}
