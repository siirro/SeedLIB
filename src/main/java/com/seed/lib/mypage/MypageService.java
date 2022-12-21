package com.seed.lib.mypage;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.member.MemberVO;

@Service
public class MypageService {


	 @Autowired
	 private MyPageMapper myPageMapper;
	 
		public MemberVO getMyPage(MemberVO memberVO)throws Exception{
			
			return myPageMapper.getMyPage(memberVO);
		}
}
