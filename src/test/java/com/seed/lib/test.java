package com.seed.lib;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.Date;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.test.autoconfigure.graphql.tester.AutoConfigureGraphQlTester;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.seed.lib.member.MemberMapper;
import com.seed.lib.member.MemberVO;

import ch.qos.logback.core.encoder.Encoder;

@SpringBootTest
class test {
	 
//    @Autowired
//	PasswordEncoder encoder;

	@Autowired
	MemberMapper mapper;
	@Test
	public void test() throws Exception{
		MemberVO memberVO =new MemberVO();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();	
		
		memberVO.setUserName("admin3");
		memberVO.setPassword(passwordEncoder.encode("admin3"));
		memberVO.setName("admin2");
		memberVO.setGender("여");
		memberVO.setPhone("01023132");
		memberVO.setEmail("adfs@sadfs");
		memberVO.setEmail("asdf");
		memberVO.setAddress1("sfdd");
		memberVO.setAddress2("@sssd");

		int result= mapper.setJoin(memberVO);
		assertEquals(1, result);
		
	}
	

}
