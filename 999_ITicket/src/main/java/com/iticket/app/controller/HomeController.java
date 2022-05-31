package com.iticket.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.iticket.app.auth.LoginManager;
import com.iticket.app.service.impl.MUsersService;
import com.iticket.app.vo.UsersVO;


@Controller
public class HomeController {
	@Autowired
	private MUsersService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req) {
		return "home";
	}
//	@GetMapping("/main")
//	public String member() {
//		return "main";
//	}
	@GetMapping("/main")
	public ModelAndView main(Model model,Authentication authentication,HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		//String userName = authentication.getName();
		UserDetails user = (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		LoginManager manager = LoginManager.getInstance();
		session.setMaxInactiveInterval(3600 * 6); //세션 유효시간 
		UsersVO vo = service.check(user.getUsername());

		if(manager.isUsing(vo.getUser_id()) == false ) {
			model.addAttribute("loginStatus",false);
		}
		
		manager.setSession(session, vo.getUser_id());

		session.setAttribute("vo", vo);
		model.addAttribute("user",user);
		mv.setViewName("main");
		return mv;
	}
	@GetMapping("/admin/main")
	public String admin() {
		return "admin/main";
	}
}
