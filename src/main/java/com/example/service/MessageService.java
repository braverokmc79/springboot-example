package com.example.service;

import java.util.List;

import com.example.model.vo.MessageVO;

public interface MessageService {

	public void messageCreate(MessageVO messageVO) throws Exception;	//create 
	
	public List<MessageVO> messageGetList(MessageVO messageVO) throws Exception; 	//Read  List		
	
	public MessageVO messageGet(MessageVO memberVO) throws Exception; 		//Read
	
	public void messageUpdate(MessageVO messageVO) throws Exception;    //update

	public void  messageDelete(MessageVO messageVO) throws Exception;   //Delete

	public List<MessageVO> messageAllList() throws Exception;
}
