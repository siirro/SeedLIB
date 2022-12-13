package com.seed.lib.admin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.member.MemberVO;
import com.seed.lib.util.HdPager;

@Service
public class AdMemberService {

	@Autowired
	private AdMemberMapper adMemberMapper;
	
	public List<MemberVO> getAdMemberList(HdPager hdPager)throws Exception{
		
		hdPager.makeRow();
		hdPager.getNum(adMemberMapper.getAdMemberCount(hdPager));
		
		return adMemberMapper.getAdMemberList(hdPager);
	}
	
}
