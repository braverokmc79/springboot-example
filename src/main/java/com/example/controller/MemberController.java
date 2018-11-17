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

import com.example.model.vo.MemberVO;
import com.example.service.MemberService;
import com.example.util.xssunclean.XssUnclean;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger log = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;
	
	
	//회원 생성폼 이동
	@RequestMapping(value="memberCreateForm")
	public String memberCreateForm(MemberVO memberVO) throws Exception {				
		return "users/member/memberForm";
	}
	
	//회원 등록
	@PostMapping("memberCreate")
	public String memberCreate(@Valid MemberVO memberVO, BindingResult bindingResult) throws Exception {				
		log.info("memberCreate  - memberVO   {} " , memberVO.toString());		
		
		if(bindingResult.hasErrors()) {		   
			return "users/member/memberForm";
		}
		
		//DB 등록
		memberService.memberCreate(memberVO);						
		return "redirect:list";
	}
	
	
	//회원 목록
	@RequestMapping(value="list")
	public String memberList(Model model) throws Exception {		
		model.addAttribute("memberList", memberService.memberGetList());
		return "users/member/memberList";
	}

	
	@GetMapping("get/{eno}")
	public String memberGet(@PathVariable("eno") Integer eno, Model model , MemberVO memberVO) throws Exception {
		log.info("\n\n\n Controller 영역  ---  eno- {} ", eno);		
		model.addAttribute("member", memberService.memberGet(memberVO));				
		return "users/member/memberGet";
	}

	
	@RequestMapping("updateForm")
	public String memberUpdateForm(MemberVO memberVO, Model model) throws Exception {
		MemberVO vo=memberService.memberGet(memberVO);
		vo.setFrom(XssUnclean.uncleanXSS(vo.getFrom()));
		vo.setTo(XssUnclean.uncleanXSS(vo.getTo()));
		vo.setSub(XssUnclean.uncleanXSS(vo.getSub()));
		vo.setBody(XssUnclean.uncleanXSS(vo.getBody()));
		
		model.addAttribute("memberVO", vo);
		model.addAttribute("action", "modify");
		return "users/member/memberForm";
	}
	
	@RequestMapping("update")
	public String memberUpdate(@Valid MemberVO memberVO, BindingResult bindingResult) throws Exception {
		log.info("memberUpdate  -  {} ", memberVO.toString());		
		if(bindingResult.hasErrors()) {		   
			return "users/member/memberForm";
		}
		
		//DB 업데이트
		memberService.memberUpdate(memberVO);						
		return "redirect:list";	
	}


	@RequestMapping("delete")
	public String memberDelete(MemberVO memberVO) throws Exception {
		memberService.memberDelete(memberVO);
		return "redirect:list";
	}

	
	
}
