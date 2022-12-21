package com.seed.lib.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;


@Service
public class MemberService {
	

	@Autowired 
	private MemberMapper memberMapper;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	
	public Integer getIdCheck(MemberVO memberVO)throws Exception{
		
		return memberMapper.getIdCheck(memberVO);
	}

	
	public int setUpdate(MemberVO memberVO)throws Exception{
		return memberMapper.setUpdate(memberVO);
	}
	
	public int setJoin(MemberVO memberVO)throws Exception {			
		memberVO.setPassword(passwordEncoder.encode(memberVO.getPassword()));
		int result = memberMapper.setJoin(memberVO);
		result = memberMapper.setMemberRole(memberVO);
		
		
		return result;
	}
	
	public int setDelete(MemberVO memberVO)throws Exception{
		int result = memberMapper.setDelete(memberVO);
		return result;
	}
	
	// 로그인 처리는 Security에서 처리함
//	public MemberVO getLogin(String username)throws Exception {
//		
//		return memberMapper.getLogin(memberVO);
//	
//	
//	}
		

}
