package com.example.service;

import java.util.List;

import com.example.model.vo.MemberVO;

public interface MemberService {

	//CRUD 생성, 읽기(가져오기), 업데이트 , 삭제
	public void memberCreate(MemberVO memberVO) throws Exception;	//create 

	public List<MemberVO> memberGetList() throws Exception; 	//Read  List
	
	public MemberVO memberGet(MemberVO memberVO) throws Exception; 		//Read
	
	public void memberUpdate(MemberVO memberVO) throws Exception;    //update
	
	public void  memberDelete(MemberVO memberVO) throws Exception;   //Delete
	
	
	
}
