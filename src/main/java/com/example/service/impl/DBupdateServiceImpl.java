package com.example.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.dao.mapper.KeywordMapper;
import com.example.model.dao.mapper.ListeningtestMapper;
import com.example.model.dao.mapper.MessageMapper;
import com.example.model.dao.mapper.ScoreMapper;
import com.example.model.vo.KeywordVO;
import com.example.model.vo.ListeningtestVO;
import com.example.model.vo.ScoreVO;
import com.example.model.vo.UserVO;
import com.example.service.DBupdateService;

@Service
public class DBupdateServiceImpl implements DBupdateService{

	
	@Autowired
	private MessageMapper messageMapper;
	
	@Autowired
	private ListeningtestMapper listeningtestMapper;
	
	@Autowired
	private KeywordMapper keywordMapper;
	
	@Autowired
	private ScoreMapper scoreMapper;
	
	@Override
	public void dbUpdate(UserVO userVO, KeywordVO  keywordVO, ScoreVO scoreVO) throws Exception{
		
		//1. listeningtest 테이블의 check 컬럼    no 조건은  유저 이메일로 전체 개수를 가져온다. 
		//만약 0보다 크면  진행 
		Integer check=0;
		check =listeningtestMapper.checkCount(userVO);
		if(check >0) {
			
			//2. listeningtest 이메일 과  check 를 조건으로  같은 것을  List 에 담는다.			
			List<ListeningtestVO>   getList=listeningtestMapper.listeningCheckList(userVO);			
			
			//해당 유저의 keyword 를 가져온다.
			keywordVO.setUserId(userVO.getId());			
			keywordMapper.keywordGet(keywordVO);
			
			
			
			for(ListeningtestVO vo : getList) {								
				
			}
			
		}
		
		
	}
	
	
}
