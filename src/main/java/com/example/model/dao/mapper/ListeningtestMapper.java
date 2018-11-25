package com.example.model.dao.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.model.vo.ListeningtestVO;
import com.example.model.vo.UserVO;

@Repository
public interface ListeningtestMapper {

	//CRUD 생성, 읽기(가져오기), 업데이트 , 삭제
	public void listeningCreate(ListeningtestVO listeningtestVO) throws Exception;	//create 

	public List<ListeningtestVO> listeningGetList() throws Exception; 	//Read  List
	
	public ListeningtestVO listeningGet(ListeningtestVO listeningtestVO) throws Exception; 		//Read
	
	public void listeningUpdate(ListeningtestVO listeningtestVO) throws Exception;    //update
	
	public void  listeningDelete(ListeningtestVO listeningtestVO) throws Exception;   //Delete

	public Integer checkCount(UserVO userVO) throws Exception;

	
	//listeningtest 이메일 과  check 를 조건으로  같은 것을  List 에 담는다.
	public List<ListeningtestVO> listeningCheckList(UserVO userVO) throws Exception;
	
	
	
	
	
}
