package com.iticket.app.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.iticket.app.service.impl.MUsersService;

@Controller
public class LoginController {
	@Autowired private MUsersService service;
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@GetMapping("/logout")
	public String logout() {
		return "logout";
	}
	@GetMapping("/idFind")
	public String idFind() {
		return "idFind";
	}
	@GetMapping("/pwFind")
	public String pwFind() {
		return "pwFind";
	}
//	@PostMapping("/login")
//	public String login(UsersVO vo,HttpSession session,Model model) {
//		HashMap<String , String> map=new HashMap<String, String>();
//		map.put("id", vo.getUser_id());
//		map.put("pw", vo.getUser_pw());
//		UsersVO vo1 = service.isMember(map);
//		if(vo1!=null) { //회원인 경우 세션에 아이디 담기
//			session.setAttribute("id", vo.getUser_id());
//			return "redirect:/login";
//		}else {
//			//model.addAttribute("errMsg","아이디 또는 비밀번호가 맞지 않아요.");
//			return "login";
//		}
//	}

//	@GetMapping("/logout")
//	public String mlogout(HttpSession session) {
//		session.invalidate();
//		return "lp";
//	}
}
