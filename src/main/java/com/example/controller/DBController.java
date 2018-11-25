package com.example.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.vo.KeywordVO;
import com.example.model.vo.ScoreVO;
import com.example.model.vo.UserVO;
import com.example.service.DBupdateService;

@Controller
@RequestMapping("/users/dbudate/**")
public class DBController {

	private static final Logger log = LoggerFactory.getLogger(DBController.class);

	@Autowired
	private DBupdateService dBupdateService;
	
	
	
	@GetMapping("")
	public String dbHome() {		
		return "dbHome";
	}
	
	@GetMapping("update")
	public String dbUpdate( KeywordVO  keywordVO, ScoreVO scoreVO  ,HttpSession session) throws Exception{
				
		UserVO userVO =(UserVO)session.getAttribute("USER");
		
		dBupdateService.dbUpdate(userVO, keywordVO, scoreVO);
		
		return "dbUdate";
	}
	
	
	
	@GetMapping("dbInitialUdate")
	public String dbInitialUpdate() {
		
		return "dbInitialUdate";
	}
	
	
	
	
}
