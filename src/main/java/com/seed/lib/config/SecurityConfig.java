package com.seed.lib.config;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.session.JdbcSessionDataSourceInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.reactive.UrlBasedCorsConfigurationSource;

import com.seed.lib.member.MemberSecurityService;
import com.seed.lib.member.MemberSocialService;
import com.seed.lib.member.security.LoginFail;
import com.seed.lib.member.security.LoginSuccess;
import com.seed.lib.member.security.LogoutCustom;
import com.seed.lib.member.security.LogoutSuccessCustom;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Autowired
	private LoginSuccess loginSuccess;
	
	@Autowired
	private LoginFail loginFail;
	
	@Autowired
	private LogoutCustom logoutCustom;
	
	@Autowired
	private LogoutSuccessCustom logoutSuccessCustom;
	
	@Autowired
	private MemberSecurityService memberSecurityService;
	
	@Autowired
	private MemberSocialService memberSocialService;
	
	@Bean
	WebSecurityCustomizer webSecurityCustomizer() throws Exception{
		
		return web -> web
				.ignoring()
				.antMatchers("/images/**")
				.antMatchers("/css/**")
				.antMatchers("/js/**")
				.antMatchers("/favicon/**")
				.antMatchers("/resources/**")
				;
		
	}
		
	@Bean
	SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
		httpSecurity
		
						 .cors()
				         .and()
				         .csrf()
				         .disable()
				      .authorizeRequests()
					.antMatchers("/").permitAll()
					.antMatchers("/admin/**").hasRole("ADMIN")
					.antMatchers("/mypage/**").hasAnyRole("MEMBER","ADMIN")
					.antMatchers("/login").permitAll()
					.antMatchers("/logout").permitAll()
					.antMatchers("/hope/setHope").hasAnyRole("MEMBER","ADMIN")
					.antMatchers("/donation/setDon").hasAnyRole("MEMBER","ADMIN")
					

					
					.anyRequest().permitAll()
					.and() //마침 지점
					
				.formLogin()
					.loginPage("/member/login")
					.usernameParameter("userName")
					//.defaultSuccessUrl("/")
					.successHandler(loginSuccess)
					//.failureUrl("/member/login?error=true&message=LoginFail")
					.failureHandler(loginFail)
					.permitAll()
					.and()
					
				.logout()
					.logoutUrl("/member/logout")
					//.logoutSuccessUrl("/")
					//.logoutSuccessHandler(logoutSuccessCustom)
					.addLogoutHandler(logoutCustom)
					.invalidateHttpSession(true)
					.deleteCookies("JSESSIONID")
					.permitAll()

					.and()
					.oauth2Login() //Social Login 설정
					.userInfoEndpoint()
					.userService(memberSocialService)
					
					;
					
	        	return httpSecurity.build();
		
	        
	}
	
	
	//암호화 시켜주는 객체 생성
	@Bean
	public PasswordEncoder getEncoder() {
		return new BCryptPasswordEncoder();
	}
	
}
