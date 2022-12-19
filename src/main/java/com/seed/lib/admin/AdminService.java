package com.seed.lib.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	// 대쉬보드 공지사항 갯수
	public int getDashBodListI()throws Exception{
		return adminMapper.getDashBodList();
	}
	
	// 대쉬보드 회원 목록 갯수
	public int getDashMemList()throws Exception{
		return adminMapper.getDashMemList();
	}
	
	// 대쉬보드 문화프로그램 목록 갯수
	public int getDashProList()throws Exception{
		return adminMapper.getDashProList();
	}
	
	// 대쉬보드 도서 목록 갯수
	public int getDashBookList()throws Exception{
		return adminMapper.getDashBookList();
	}
	
}
