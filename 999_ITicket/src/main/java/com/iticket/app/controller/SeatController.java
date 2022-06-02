package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.SeatService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.SeatVO;

@Controller
public class SeatController {
	@Autowired
	private SeatService seatService;
	

	@GetMapping("/seat")
	public String goSeat(SeatVO svo, Model model) {
		List<SeatVO> seat_list = seatService.getseatList(svo);
		model.addAttribute("getseatList", seat_list);
		return "seat";
	}
	
	@RequestMapping("get_seat")
	public String get_seat(SeatVO vo, Model model) {
		SeatVO seat = seatService.get_seat(vo);
		model.addAttribute("seat", seat);
		return "/reserv/reserv_insert";
	}
	
	@GetMapping("/insert_reserv")
	public String go_reserv_insert(SeatVO svo, Model model) {
		
		List<SeatVO> seat_list = seatService.getseatList(svo);

		model.addAttribute("getseatList", seat_list);
		
		
		return "/reserv/reserv_insert";
	}
}
