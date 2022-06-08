package com.iticket.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserInfoController {
	
	@GetMapping("/userinfo")
	public String userinfo() {
		return "info/userinfo";
	}
	@GetMapping("/userUpdate")
	public String userUpdate() {
		return "info/userUpdate";
	}
	@PostMapping("/userUpdate")
	public String userUpdateOk() {
		return "info/userUpdateOk";
	}
	@GetMapping("/userPwupdate")
	public String userPwupdate() {
		return "info/userPwupdate";
	}
	@GetMapping("/userLog")
	public String userLog() {
		return "info/userLog";
	}
	@GetMapping("/userDrob")
	public String userDrob() {
		return "info/userDrob";
	}
}
