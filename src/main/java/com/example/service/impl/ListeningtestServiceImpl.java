package com.example.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.dao.mapper.ListeningtestMapper;
import com.example.model.vo.ListeningtestVO;
import com.example.service.ListeningtestService;

@Service
public class ListeningtestServiceImpl implements ListeningtestService{
	
	private static final Logger log = LoggerFactory.getLogger(ListeningtestServiceImpl.class);
	
	@Autowired
	private ListeningtestMapper listeningtestMapper;
	
	
	@Override
	public void listeningCreate(ListeningtestVO listeningtestVO) throws Exception {		
		listeningtestMapper.listeningCreate(listeningtestVO);
	}

	@Override
	public List<ListeningtestVO> listeningGetList() throws Exception {	
		
		//데이터 가공
		
		return listeningtestMapper.listeningGetList();	
	}

	@Override
	public ListeningtestVO listeningGet(ListeningtestVO listeningtestVO) throws Exception {			
		ListeningtestVO vo=listeningtestMapper.listeningGet(listeningtestVO);				
		
		//데이터 가공
		
		log.info("\n\n 서비스영역 listeningtestVOGet :   {} " , vo.toString());	
		return vo;
	}
	
	

	@Override
	public void listeningUpdate(ListeningtestVO listeningtestVO) throws Exception {		
		listeningtestMapper.listeningUpdate(listeningtestVO);
	}

	@Override
	public void listeningDelete(ListeningtestVO listeningtestVO) throws Exception {
		listeningtestMapper.listeningDelete(listeningtestVO);	
	}
	
	
	
}
