package com.iticket.app.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RankingContorller {
	
	@RequestMapping("ranking")
	public String goRanking() {
		return "ranking";
	}

}
