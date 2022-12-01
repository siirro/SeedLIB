package com.seed.lib.member;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.seed.lib.admin.book.BookPrintVO;
import com.seed.lib.book.BookVO;

import lombok.Data;

@Data
//public class MemberVO  implements UserDetails{
	public class MemberVO {
	
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
	
	private List<BookPrintVO> bookPrintVOs;
	private BookVO bookVO;
	
	private List<RoleVO> roleVOs;


//	@Override
//	public Collection<? extends GrantedAuthority> getAuthorities() {
//
//		List<GrantedAuthority> authorities =new ArrayList<>();
//		for (RoleVO roleVO: roleVOs) {
//		authorities.add(new SimpleGrantedAuthority(roleVO.getRoleName()));
//			roleVO.getRoleName();
//			
//		}
//		return authorities;
//	}
//
//
//	@Override
//	public String getUsername() {
//		// TODO Auto-generated method stub
//		return this.userName;
//	}
//
//
//	@Override
//	public boolean isAccountNonExpired() {
//		// TODO Auto-generated method stub
//		return true;
//	}
//
//
//	@Override
//	public boolean isAccountNonLocked() {
//		// TODO Auto-generated method stub
//		return true;
//	}

//	@Override
//	public boolean isCredentialsNonExpired() {
//		// TODO Auto-generated method stub
//		return true;
//	}	



}
