package com.seed.lib.admin;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.member.MemberVO;

@Mapper
public interface AdminMapper {
	
	// 대쉬보드 공지사항 갯수
	public int getDashBodList()throws Exception;

	// 대쉬보드 회원 목록 갯수
	public int getDashMemList()throws Exception;
	
	// 대쉬보드 문화프로그램 목록 갯수
	public int getDashProList()throws Exception;
	
	// 대쉬보드 도서 목록 갯수
	public int getDashBookList()throws Exception;
	
	public int setAdminRole(MemberVO memberVO)throws Exception;
	
}
