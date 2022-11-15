package com.seed.lib.member;

import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private String userName;
	private String password;
	private String name;
	private String email;
	private Integer birth;
	private String phone;
	private String post;
	private String addess1;
	private String addess2;
	
	private List<RoleVO> roleVOs;
	
	
	

}
