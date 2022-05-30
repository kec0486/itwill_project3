package com.iticket.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		return "home";
	}
	@GetMapping("/main")
	public String member() {
		return "main";
	}
	@GetMapping("/admin/main")
	public String admin() {
		return "admin/main";
	}
}
