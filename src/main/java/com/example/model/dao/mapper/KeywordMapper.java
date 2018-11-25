package com.example.model.dao.mapper;

import org.springframework.stereotype.Repository;

import com.example.model.vo.KeywordVO;

@Repository
public interface KeywordMapper {

	public void keywordCreate(KeywordVO keywordVO) throws Exception; 

	public KeywordVO keywordGet(KeywordVO keywordVO) throws Exception; 
	
	public void kewordUpdate(KeywordVO keywordVO) throws Exception;
	
	
}
