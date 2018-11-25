package com.example.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.vo.ListeningtestVO;
import com.example.service.ListeningtestService;

@Controller
@RequestMapping("/users/listeningtest/**")
public class ListeningtestController {

	private static final Logger log = LoggerFactory.getLogger(ListeningtestController.class);

	@Autowired
	private ListeningtestService listeningtestService;
	
	
	//회원 생성폼 이동
	@RequestMapping(value="listeningCreateForm")
	public String listeningtestCreateForm(ListeningtestVO listeningtestVO) throws Exception {				
		return "users/listeningtest/listeningForm";
	}
	
	//회원 등록
	@PostMapping("listeningtestCreate")
	public String listeningtestCreate(@Valid ListeningtestVO listeningtestVO, BindingResult bindingResult) throws Exception {				
		log.info("listeningCreate  - listeningtestVO   {} " , listeningtestVO.toString());		
		
		if(bindingResult.hasErrors()) {		   
			return "users/listeningtest/listeningForm";
		}		
		//DB 등록
		listeningtestService.listeningCreate(listeningtestVO);						
		return "redirect:/users/listeningtest/list";
	}
	
	
	//회원 목록
	@RequestMapping(value="list")
	public String listeningtestList(Model model) throws Exception {		
		model.addAttribute("listeningList", listeningtestService.listeningGetList());
		return "users/listeningtest/listeningList";
	}

	
	@GetMapping("get/{eno}")
	public String listeningtestGet(@PathVariable("eno") Integer eno, Model model , ListeningtestVO listeningtestVO) throws Exception {
		log.info("\n\n\n Controller 영역  ---  eno- {} ", eno);		
		model.addAttribute("listeningtest", listeningtestService.listeningGet(listeningtestVO));				
		return "users/listeningtest/listeningGet";
	}

	
	@RequestMapping("updateForm")
	public String listeningtestUpdateForm(ListeningtestVO listeningtestVO, Model model) throws Exception {
		ListeningtestVO vo=listeningtestService.listeningGet(listeningtestVO);
/*		vo.setFrom(XssUnclean.uncleanXSS(vo.getFrom()));
		vo.setTo(XssUnclean.uncleanXSS(vo.getTo()));
		vo.setSub(XssUnclean.uncleanXSS(vo.getSub()));
		vo.setBody(XssUnclean.uncleanXSS(vo.getBody()));*/
		
		model.addAttribute("listeningtestVO", vo);
		model.addAttribute("action", "modify");
		return "users/listeningtest/listeningForm";
	}
	
	@RequestMapping("update")
	public String listeningtestUpdate(@Valid ListeningtestVO listeningtestVO, BindingResult bindingResult) throws Exception {
		log.info("listeningtestUpdate  -  {} ", listeningtestVO.toString());		
		if(bindingResult.hasErrors()) {		   
			return "users/listeningtest/listeningForm";
		}
		
		//DB 업데이트
		listeningtestService.listeningUpdate(listeningtestVO);						
		return "redirect:list";	
	}


	@RequestMapping("delete")
	public String listeningtestDelete(ListeningtestVO listeningtestVO) throws Exception {
		listeningtestService.listeningDelete(listeningtestVO);
		return "redirect:list";
	}

	
	
}
