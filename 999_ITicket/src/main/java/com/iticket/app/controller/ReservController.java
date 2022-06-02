package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.ReservService;
import com.iticket.app.vo.ReservationVO;

import com.iticket.app.service.impl.SeatService;
import com.iticket.app.vo.SeatVO;

@Controller
public class ReservController {
	@Autowired
	private ReservService reservService;
	private SeatService seatService;

	@GetMapping("reserv_ssh")
	public String get_reserv_List(ReservationVO vo, Model model) {

		List<ReservationVO> reserv_list = reservService.get_reserv_List(vo);
		model.addAttribute("get_reserv_List", reserv_list);
		return "/reserv/reserv_ssh";
	}
	
	@GetMapping("get_reserv_del")
	public String get_reserv_del(ReservationVO vo, Model model) {

		ReservationVO get_reserv = reservService.get_reserv(vo);
		model.addAttribute("get_reserv", get_reserv);
		return "/reserv/reserv_delete";
	}

// seatcontroller에 있음. 여기선 안되는데 시트컨트롤러에서는 작동함 왜그런지는 나도 몰?루
//	@GetMapping("insert_reserv")
//	public String go_reserv_ins(SeatVO svo, Model model) {	
//		List<SeatVO> seat_list = seatService.getseatList(svo);
//		model.addAttribute("getseatList", seat_list);
//		return "/reserv/reserv_insert";
//	}

	@RequestMapping("delete_reserv")
	public String go_reserv_delete(ReservationVO vo, Model model) {
		List<ReservationVO> reserv_list = reservService.get_reserv_List(vo);
		model.addAttribute("get_reserv_List", reserv_list);
		return "/reserv/reserv_delete";
	}

	@RequestMapping("update_reserv")
	public String go_reserv_update() {
		return "/reserv/reserv_update";
	}

	@RequestMapping("insert_reserv_do")
	public String insert_reserv(ReservationVO rvo, Model model) {
		System.out.println(">>> reserv insert");
		System.out.println("insert vo : " + rvo);
		reservService.insert_reserv(rvo);

		return "/reserv/reserv_ssh";
	}

	@RequestMapping("update_reserv_do")
	public String update_reserv(ReservationVO vo) {
		System.out.println(">>> 게시글 수정");
		System.out.println("vo : " + vo);

		reservService.update_reserv(vo);
		return "/reserv/reserv_ssh";
	}

	@RequestMapping("delete_reserv_do")
	public String delete_reserv(ReservationVO vo) {
		System.out.println(">>> 게시글 삭제");
		System.out.println("vo : " + vo);

		reservService.delete_reserv(vo);
		return "/reserv/reserv_ssh";
	}

}
