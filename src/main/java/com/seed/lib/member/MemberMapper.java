package com.seed.lib.member;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface MemberMapper {

	public Integer getIdCheck(MemberVO memberVO)throws Exception;	
	public MemberVO getLogin(MemberVO memberVO)throws Exception;
	public int setMemberRole(MemberVO memberVO)throws Exception;
	public int setJoin(MemberVO memberVO) throws Exception;
	public int setUpdate(MemberVO memberVO) throws Exception;
}
