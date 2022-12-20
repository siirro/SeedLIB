package com.seed.lib.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberSecurityService extends DefaultOAuth2UserService implements UserDetailsService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override //로그인, 권한정보 리턴
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
	 MemberVO memberVO = null;
	try {
		memberVO = memberMapper.getLogin(userName);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	 log.info("++++++++로그인 시도중++++++++++");
	 log.info("++++++++로그인 시도중++++++++++=>{}",memberVO);
		return memberVO;
	}
	

	
	
}
