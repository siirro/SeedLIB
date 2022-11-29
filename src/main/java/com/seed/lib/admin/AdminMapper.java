package com.seed.lib.admin;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.member.MemberVO;

@Mapper
public interface AdminMapper {

	public int setAdminRole(MemberVO memberVO)throws Exception;
	
}
