package com.seed.lib.member;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;


import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.seed.lib.book.BookVO;
import com.seed.lib.book.order.BookPrintVO;

import lombok.Data;

@Data
public class MemberVO implements UserDetails, OAuth2User{
//public class MemberVO {
	private String userName;
	private String password;
	private String name;
	private String gender;
	private String email;
	private Date birth;
	private String phone;
	private String post;
	private String address1;
	private String address2;
	private Date regDate;
	private boolean enabled;
	private boolean loanStatus;
	private Integer ovMyrCount;
	private boolean dropStatus;
	
	// 제본 여러번
	private List<BookPrintVO> bookPrintVOs;
	
	private List<RoleVO> roleVOs;
//	
//	//OAuth2User, Token등 정보 저장
	private Map<String, Object> attributes;
//	
//	//====== Social Login ===========
//	//Kakao, Naver, Google
	private String social;
	private String token;
//
//
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {

		List<GrantedAuthority> authorities =new ArrayList<>();
		for (RoleVO roleVO: roleVOs) {
		authorities.add(new SimpleGrantedAuthority(roleVO.getRoleName()));
			roleVO.getRoleName();
			
		}
		return authorities;
	}


	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.userName;
	}
	
	public String getUserName() {
		// TODO Auto-generated method stub
		return this.userName;
	}


	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}


	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}	


	@Override
	public boolean isEnabled() {
		return true;
	}


		@Override
		public Map<String, Object> getAttributes() {
			// TODO Auto-generated method stub
			return this.attributes;
		}
	
}
