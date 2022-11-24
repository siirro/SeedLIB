package com.seed.lib.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;


@Service
public class MemberService {
	

	@Autowired 
	private MemberMapper memberMapper;
	
	

	
	public Integer getIdCheck(MemberVO memberVO)throws Exception{
		
		return memberMapper.getIdCheck(memberVO);
	}

	
	public int setJoin(MemberVO memberVO)throws Exception {			
	
		int result = memberMapper.setJoin(memberVO);
		result = memberMapper.setMemberRole(memberVO);
		
		
		return result;
	}
	
	public MemberVO getLogin(MemberVO memberVO)throws Exception {
		
		return memberMapper.getLogin(memberVO);
	
	
	}
		

}
