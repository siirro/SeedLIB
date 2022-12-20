package com.seed.lib.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import lombok.extern.slf4j.Slf4j;

@Configuration
@Slf4j
public class WebConfig implements WebMvcConfigurer {
	

	@Value("${app.upload.base}")
	private String filePath;
	
	@Value("${app.url.path}")
	private String urlPath;
	
	@Bean
    MappingJackson2JsonView jsonView(){
        return new MappingJackson2JsonView();
    }

	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		log.info("=====================================");
		log.info("filePath {} ", filePath );
		log.info("urlPath {} ", urlPath);
		log.info("=====================================");
		
		//<resources mapping="/resources/**" location="/resources/" />
		registry.addResourceHandler(urlPath) //요청 URL 주소
				.addResourceLocations(filePath);
		
		
	}
	
}
