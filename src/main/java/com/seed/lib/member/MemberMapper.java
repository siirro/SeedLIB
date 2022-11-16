package com.seed.lib.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	
	public MemberVO getLogin(MemberVO memberVO)throws Exception;
	public int setJoin(MemberVO memberVO) throws Exception;
}