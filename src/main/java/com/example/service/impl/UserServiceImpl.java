package com.example.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.dao.mapper.UserMapper;
import com.example.model.vo.UserVO;
import com.example.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public void userCreate(UserVO userVO) throws Exception {
		userMapper.userCreate(userVO);
	}

	@Override
	public List<UserVO> userGetList() throws Exception {		
		return userMapper.userGetList();
	}

	@Override
	public UserVO userGet(UserVO userVO) throws Exception {
		return userMapper.userGet(userVO);
	}

	@Override
	public void userUpdate(UserVO userVO) throws Exception {
		userMapper.userUpdate(userVO);
	}

	@Override
	public void userDelete(UserVO userVO) throws Exception {
		userMapper.userDelete(userVO);
	}
	
	

	@Override
	public UserVO userGetEmail(UserVO userVO) throws Exception {
		return userMapper.userGetEmail(userVO);
	}

	@Override
	public UserVO userPwdConfirm(UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		return userMapper.userPwdConfirm(userVO);
	}

	
	
}
