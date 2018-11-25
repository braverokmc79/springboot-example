package com.example.model.dao.mapper;

import org.springframework.stereotype.Repository;

import com.example.model.vo.ScoreVO;

@Repository
public interface ScoreMapper {

	public void scoreCreate(ScoreVO scoreVO) throws Exception; 

	public ScoreVO scoreGet(ScoreVO scoreVO) throws Exception; 
	
	public void scoreUpdate(ScoreVO score) throws Exception;
	
	
}
