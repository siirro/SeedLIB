package com.seed.lib.member;

import java.sql.Date;
import java.util.Collection;
import java.util.List;



import lombok.Data;

@Data
public class MemberVO {
	
	private String userName;
	private String password;
	private String name;
	private String gender;
	private String email;
	private Integer birth;
	private String phone;
	private String post;
	private String address1;
	private String address2;
	private Date regDate;
	private boolean enabled;
	private boolean loanStatus;
	private Integer ovMyrCount;
	private boolean dropStatus;
	
	
	private List<RoleVO> roleVOs;



}
