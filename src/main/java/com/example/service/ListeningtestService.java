package com.example.service;

import java.util.List;

import com.example.model.vo.ListeningtestVO;


public interface ListeningtestService {

	//CRUD 생성, 읽기(가져오기), 업데이트 , 삭제
	public void listeningCreate(ListeningtestVO listeningtestVO) throws Exception;	//create 

	public List<ListeningtestVO> listeningGetList() throws Exception; 	//Read  List
	
	public ListeningtestVO listeningGet(ListeningtestVO listeningtestVO) throws Exception; 		//Read
	
	public void listeningUpdate(ListeningtestVO listeningtestVO) throws Exception;    //update
	
	public void  listeningDelete(ListeningtestVO listeningtestVO) throws Exception;   //Delete
	
	
	
}
