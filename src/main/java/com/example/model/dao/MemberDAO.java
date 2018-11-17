package com.example.model.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.example.model.dao.mapper.MemberMapper;
import com.example.model.vo.MemberVO;

//@Repository
public class MemberDAO implements MemberMapper{

	private static final Logger log = LoggerFactory.getLogger(MemberDAO.class);
	
	
	@Override
	public void memberCreate(MemberVO memberVO) throws Exception {		
	
	}

	@Override
	public List<MemberVO> memberGetList() throws Exception {
		return null;
	}

	@Override
	public MemberVO memberGet(MemberVO memberVO) throws Exception {		
		log.info("모델 영역 memberGet  ");
		return null;
	}

	@Override
	public void memberUpdate(MemberVO memberVO) throws Exception {
		
	}

	@Override
	public void memberDelete(MemberVO memberVO) throws Exception {
		
	}

	
}
