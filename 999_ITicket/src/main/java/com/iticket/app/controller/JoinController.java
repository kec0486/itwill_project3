package com.iticket.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.iticket.app.service.impl.MUsersService;
import com.iticket.app.vo.UsersVO;

@Controller
public class JoinController {
	@Autowired private MUsersService service;
	@GetMapping("/join")
	public String joinForm() {
		return "join";
	}
	@PostMapping("/join")
	public String join(UsersVO vo) {
		service.insert(vo);
		return "main";
	}
}
