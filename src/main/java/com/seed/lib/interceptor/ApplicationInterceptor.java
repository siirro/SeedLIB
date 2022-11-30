package com.seed.lib.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import com.seed.lib.member.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Configuration
public class ApplicationInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
        MemberVO memberVO = (MemberVO)request.getSession().getAttribute("memberVO");
        log.info("mvo:{}", memberVO);
        if(memberVO != null) {
        	return true;
        } else {
        	String destUri = request.getRequestURI();
        	String destQ = request.getQueryString();
        	log.info("Request URI ===> {}" + destUri);
        	log.info("Request q ===> {}" + destQ);
        	request.getSession().setAttribute("dest", destUri);
        	response.sendRedirect("/member/login");		
        	return false;
        }
	}

	
}
