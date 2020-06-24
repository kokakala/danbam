package com.hongcha.main.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Member {
	
	private int mno;
	private String loginType;
	private String mid;	
	private String email;		
	private String pass;
	private String mobile;
	private String nickName;
	private Date enrollDate;
	private Date updateDate;
	private Date deleteDate;
	private String isDelete;


	
	
	private String location;	// ��ġ
	private String snsId; 		// google �α���


}
