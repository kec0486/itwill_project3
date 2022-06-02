package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.SeatService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.SeatVO;

@Controller
public class MusicalController {
	
	@Autowired
	private DetailService detailService;
	
	@Autowired
	private SeatService seatService;
	
	@GetMapping("/musical")
	public String goMusical(DetailVO dvo,SeatVO svo, Model model) {
		List<DetailVO> list = detailService.getNameList(dvo);
		List<DetailVO> list_all = detailService.getList(dvo);
		
		List<SeatVO> seat_list = seatService.getseatList(svo);

		model.addAttribute("getseatList", seat_list);
		model.addAttribute("getNameList", list);
		
		
		return "musical";
	}

}
