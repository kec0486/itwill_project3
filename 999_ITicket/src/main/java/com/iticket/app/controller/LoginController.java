package com.iticket.app.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@GetMapping("/admin/logout")
	public String adminlogout(HttpSession session) {
		session.invalidate();
		return "login";
	}
	@GetMapping("/member/logout")
	public String memberlogout(HttpSession session) {
		session.invalidate();
		return "login";
	}
}
