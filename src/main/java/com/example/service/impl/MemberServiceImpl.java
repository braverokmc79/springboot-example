package com.example.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.dao.mapper.MemberMapper;
import com.example.model.vo.MemberVO;
import com.example.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
	
	private static final Logger log = LoggerFactory.getLogger(MemberServiceImpl.class);
	
	@Autowired
	private MemberMapper memberMapper;
	
	
	@Override
	public void memberCreate(MemberVO memberVO) throws Exception {		
		memberMapper.memberCreate(memberVO);
	}

	@Override
	public List<MemberVO> memberGetList() throws Exception {	
		
		//데이터 가공
		
		return memberMapper.memberGetList();	
	}

	@Override
	public MemberVO memberGet(MemberVO memberVO) throws Exception {			
		MemberVO vo=memberMapper.memberGet(memberVO);				
		
		//데이터 가공
		
		log.info("\n\n 서비스영역 memberGet :   {} " , vo.toString());	
		return vo;
	}
	
	

	@Override
	public void memberUpdate(MemberVO memberVO) throws Exception {		
		memberMapper.memberUpdate(memberVO);
	}

	@Override
	public void memberDelete(MemberVO memberVO) throws Exception {
		memberMapper.memberDelete(memberVO);	
	}
	
	
	
}
