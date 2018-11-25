package com.example.service;

import com.example.model.vo.ScoreVO;


public interface ScoreService {
	
	public void scoreCreate(ScoreVO scoreVO) throws Exception; 

	public ScoreVO scoreGet(ScoreVO scoreVO) throws Exception; 
	
	public void scoreUpdate(ScoreVO score) throws Exception;
	
	
}
