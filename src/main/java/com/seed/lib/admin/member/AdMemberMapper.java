package com.seed.lib.admin.member;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.member.MemberVO;
import com.seed.lib.util.HdPager;

@Mapper
public interface AdMemberMapper {

	// 회원 수
	public Long getAdMemberCount(HdPager hdPager)throws Exception;
	
	// 어드민 회원정보 목록
	public List<MemberVO> getAdMemberList(HdPager hdPager)throws Exception;
	
}
