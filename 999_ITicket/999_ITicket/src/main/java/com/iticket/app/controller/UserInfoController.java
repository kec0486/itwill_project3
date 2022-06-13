package com.iticket.app.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserInfoController {
	
	@GetMapping("/userinfo")
	public String userinfo() {
		
		return "info/userinfo";
	}
	@GetMapping("/userinfoMain")
	public String userinfoMain(HttpServletRequest request) {
		String order = request.getParameter("order");
		request.setAttribute("order", order);
		return "info/userinfoMain";
	}
	@PostMapping("/userinfoMainOk")
	public String userinfoMainOk(HttpServletRequest request) {
		String order = request.getParameter("order");
		if(order == null) {
			//return "info/userinfoMainOk";
		}else if(order == "1") {
			//return "info/userinfoMainOk";
		}else if(order == "2") {
		}else if(order == "3") {
		}else if(order == "4") {
		}
		return "info/userinfoMainOk";
	}

}
