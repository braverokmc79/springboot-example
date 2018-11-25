package com.example.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.dao.mapper.KeywordMapper;
import com.example.model.vo.KeywordVO;
import com.example.service.KeywordService;

@Service
public class KeywordServiceImpl implements KeywordService {

	private static final Logger log = LoggerFactory.getLogger(KeywordServiceImpl.class);
	
	@Autowired
	private KeywordMapper keywordMapper;

	
	@Override
	public void keywordCreate(KeywordVO keywordVO) throws Exception {
		keywordMapper.keywordCreate(keywordVO);
	}

	@Override
	public KeywordVO keywordGet(KeywordVO keywordVO) throws Exception {
		
		return keywordMapper.keywordGet(keywordVO);
	}

	@Override
	public void kewordUpdate(KeywordVO keywordVO) throws Exception {
		keywordMapper.kewordUpdate(keywordVO);
	}
	

	
	
}
