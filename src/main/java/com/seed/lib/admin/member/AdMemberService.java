package com.seed.lib.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.member.MemberVO;

@Service
public class AdMemberService {

	@Autowired
	private AdMemberMapper adMemberMapper;
	
	public List<MemberVO> getAdMemberList()throws Exception{
		return adMemberMapper.getAdMemberList();
	}
	
}
