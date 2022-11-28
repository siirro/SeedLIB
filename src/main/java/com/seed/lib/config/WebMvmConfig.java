package com.seed.lib.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.seed.lib.interceptor.ApplicationInterceptor;

@Configuration
public class WebMvmConfig implements WebMvcConfigurer {
	
	@Autowired
	private ApplicationInterceptor applicationInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(applicationInterceptor)
				.addPathPatterns("/*")
        		.excludePathPatterns("/css/**", "/images/**", "/js/**");
	}

	
}
