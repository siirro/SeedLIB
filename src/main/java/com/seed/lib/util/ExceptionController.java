package com.seed.lib.util;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@ControllerAdvice
@Slf4j
public class ExceptionController {
	
	@ExceptionHandler(value = NullPointerException.class)
    public ModelAndView nullPointerExceptionHandle(Exception e) {
		ModelAndView mv = new ModelAndView();
		log.error("Unexpected error occurred : {}", e.getMessage());
//        System.err.println(e.getClass());
		mv.setViewName("member/login");
		return mv;
    }
	



}
