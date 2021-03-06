package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.ScheduleService;
import com.iticket.app.service.impl.SeatSaveService;
import com.iticket.app.service.impl.SeatService;
import com.iticket.app.vo.ScheduleVO;
import com.iticket.app.vo.SeatSaveVO;
import com.iticket.app.vo.SeatVO;
@Controller
public class ScheduleController {
	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private  SeatService seatService;
	@Autowired
	private  SeatSaveService seatsaveService;
	
	@GetMapping("/get_schedule_list")
	public String goSchedule(ScheduleVO vo, Model model) {
		
		List<ScheduleVO> schedule_list = scheduleService.get_schedule_list(vo);
		model.addAttribute("get_schedule_list", schedule_list);
		return "/reserv/reserv_insert";
	}
	
	@RequestMapping("get_schedule")
	public String getschedule(ScheduleVO vo, Model model) {
		ScheduleVO Schedule = scheduleService.getSchedule(vo);
		System.out.println("ScheduleVO : " + vo);
		System.out.println("Schedule : " + Schedule);
		System.out.println("Schedule의 getHl_buildingnum : "+Schedule.getHl_buildingnum());
		System.out.println("Schedule의 getSd_num : "+ vo.getSd_num());
		
		SeatSaveVO tempsavevo= new SeatSaveVO();
		tempsavevo.setSd_num(vo.getSd_num());
		List<SeatSaveVO> get_seatsave_list = seatsaveService.get_seatsave_list(tempsavevo);
		System.out.println("Schedule의 getSd_num : "+ vo.getSd_num());
		System.out.println("tempsavevo : "+tempsavevo);
		System.out.println("get_seatsave_list : " + get_seatsave_list);

		SeatVO tempvo=new SeatVO();
		tempvo.setHl_buildingnum(Schedule.getHl_buildingnum());
		System.out.println("choose_seat 들어간 vo : "+ tempvo);
		List<SeatVO> seat_list = seatService.getseatList_choose(tempvo);
		System.out.println("choose_seat 들어간 seat_list : "+ seat_list);
		
		model.addAttribute("Schedule", Schedule);
		model.addAttribute("get_seatsave_list", get_seatsave_list);
		model.addAttribute("getseatList_choose", seat_list);
		return "/reserv/reserv_insert";
	}
	
	
}
