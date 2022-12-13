package com.seed.lib.mypage;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.member.MemberVO;

@Mapper
public interface MyPageMapper {
	
	public MemberVO getMyPage(MemberVO memberVO)throws Exception;


}
