package com.seed.lib.admin.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.member.MemberVO;

@Mapper
public interface AdMemberMapper {

	// 회원 목록 꺼내오기
	public List<MemberVO> getAdMemberList()throws Exception;
	
}
