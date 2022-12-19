package com.seed.lib.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import com.seed.lib.interceptor.ApplicationInterceptor;

@Configuration
public class WebMvmConfig implements WebMvcConfigurer {
	
	@Autowired
	private ApplicationInterceptor applicationInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(applicationInterceptor)
				.addPathPatterns("/hope/setHope")
				.addPathPatterns("/donation/setDon")
				.addPathPatterns("/studyroom/**")
//				.addPathPatterns("/mypage/**")
				.excludePathPatterns("/index")
        		.excludePathPatterns("/css/**", "/images/**", "/js/**");
	}

	
}
