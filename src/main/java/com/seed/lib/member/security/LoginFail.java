package com.seed.lib.member.security;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;


@Component
@Slf4j
public class LoginFail implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
	
		String result=null;
		if (exception instanceof BadCredentialsException) {
			result="없는 비밀번호 입니다. 비밀번호를 확인해주세요.";
		}else if(exception instanceof InternalAuthenticationServiceException) {
		    result="없는 아이디입니다. 아이디를 확인해주세요.";
		}else if(exception instanceof DisabledException) {
			result="탈퇴된 회원입니다.";
		}else if(exception instanceof LockedException) {
			result="계정이 잠긴 회원입니다. 관리자에 문의해 주세요";
		}else {
		     result="아이디와 비밀번호를 확인해주세요.";
		}
		
		result=URLEncoder.encode(result,"UTF-8");
		request.setAttribute("msg", result);
		request.getRequestDispatcher("/member/login").forward(request, response);
	}
	
	

}
