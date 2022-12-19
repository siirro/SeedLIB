package com.seed.lib.member.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.seed.lib.member.MemberVO;

import lombok.extern.slf4j.Slf4j;


@Component
@Slf4j
public class LoginSuccess implements AuthenticationSuccessHandler {
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub
		log.info("================= 로그인 성공 ===============");
		log.info("Auth=>{}",authentication);
		log.info("ID=>{}",request.getParameter("userName"));
		
		String check= request.getParameter("rememberId");
		log.info("check=>{}",check);
		
		Cookie cookie =new Cookie("userName", request.getParameter("userName"));
		if(check != null && check.equals("on")) {
		cookie.setHttpOnly(true);
		cookie.setMaxAge(60); //얼마동안 저장되어 있을건지
		cookie.setPath("/"); // 같은 도메인 내에서 어느 url까지 사용 가능
		
		response.addCookie(cookie);
		}else {
		// 쿠키지우기
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie1: cookies) {
			if(cookie1.getName().equals("userName")) {
				cookie1.setMaxAge(0);
				cookie1.setPath("/");
				response.addCookie(cookie1);
				log.info("=========== cookie 삭제 ===========");
				break;
			}
		}
	}
		response.sendRedirect("/");
	

}


	}
	
