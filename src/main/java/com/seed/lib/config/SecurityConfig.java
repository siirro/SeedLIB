package com.seed.lib.config;

//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
//import org.springframework.security.web.SecurityFilterChain;

//@Configuration
//@EnableWebSecurity
//public class SecurityConfig {
	
//	@Bean
//	WebSecurityCustomizer webSecurityCustomizer() throws Exception{
//		
//		return web -> web
//				.ignoring()
//				.antMatchers("/images/**")
//				.antMatchers("/css/**")
//				.antMatchers("/js/**")
//				.antMatchers("/favicon/**")
//				.antMatchers("/resources/**")
//				;
//		
//	}
//		
//	@Bean
//	SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
//		httpSecurity
//					.cors() 
//					.and()
//					.csrf()
//					.disable() 
//					.authorizeRequests()
//					
//					.antMatchers("/admin").hasRole("ADMIN")
//					.antMatchers("/login").permitAll()
//					.antMatchers("/logout").permitAll()
//					
//					.anyRequest().permitAll()
//					.and()
//					
//					.formLogin()
//					.loginPage("/member/login")
//					.usernameParameter("userName")
//					.defaultSuccessUrl("/")
//					.failureUrl("member/login")
//					.permitAll()
//					.and()
//					
//					.logout()
//					.permitAll()
//					
//					;
//					
//	        	return httpSecurity.build();
//		
//	}
//	
//}
