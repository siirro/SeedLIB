package com.seed.lib.member;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.security.core.userdetails.UsernameNotFoundException;


@Mapper
public interface MemberMapper {

	public Integer getIdCheck(MemberVO memberVO)throws Exception;	
	public MemberVO getLogin(String username)throws UsernameNotFoundException;
	public int setMemberRole(MemberVO memberVO)throws Exception;
	public int setJoin(MemberVO memberVO) throws Exception;
}
