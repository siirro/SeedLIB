//package com.seed.lib.member.security;
//
//import java.io.IOException;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.web.authentication.logout.LogoutHandler;
//import org.springframework.stereotype.Component;
//
//import com.nimbusds.oauth2.sdk.Response;
//import com.seed.lib.member.MemberVO;
//
//import lombok.extern.slf4j.Slf4j;
//
//@Component
//@Slf4j
//public class LogoutCustom implements LogoutHandler {
//	
//	
//	
//	@Value("${kakaokey1}")
//	private String kakaoKey;
//	
//	@Value("${redirecturi}")
//	private String redirecturi;
//
//	@Override
//	public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
//		// TODO Auto-generated method stub
//		
//		MemberVO memberVO= (MemberVO)authentication.getPrincipal();
//		String social = memberVO.getSocial();
//		if(social !=null) {
//		if(social.equals("kakao")) {
//			try {
//				response.sendRedirect("https://kauth.kakao.com/oauth/logout?client_id=kakaoKey&logout_redirect_uri=redirecturi");
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//
//		}else if(social.equals("google")) {
//		
//		}else {
//			
//		}
//	}
//		request.getSession().invalidate();
//		
//	}
//
//	
//}
