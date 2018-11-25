package com.example.service;

import com.example.model.vo.KeywordVO;


public interface KeywordService {
	
	public void keywordCreate(KeywordVO keywordVO) throws Exception; 

	public KeywordVO keywordGet(KeywordVO keywordVO) throws Exception; 
	
	public void kewordUpdate(KeywordVO keywordVO) throws Exception;
	
	
}
