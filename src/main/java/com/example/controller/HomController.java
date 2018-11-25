package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.util.interceptor.LoginSessionCheck;

@Controller
public class HomController {

	@RequestMapping(value="/")
	public String index(HttpSession session) {	
		if(LoginSessionCheck.check(session))return "redirect:/login"; 			
		return "index";		
	}

	@RequestMapping(value="/users")
	public String userHome(HttpSession session) {	
		if(LoginSessionCheck.check(session))return "redirect:/login"; 			
		return "index";		
	}
	
	
	
}
