package com.seed.lib.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	

	@Autowired 
	private MemberMapper memberMapper;
	
	public int setJoin(MemberVO memberVO)throws Exception {			
	
		int result = memberMapper.setJoin(memberVO);
		
		return result;
	}
	
	public MemberVO getLogin(MemberVO memberVO)throws Exception {
		
		return memberMapper.getLogin(memberVO);
	
	
	}
		

}
