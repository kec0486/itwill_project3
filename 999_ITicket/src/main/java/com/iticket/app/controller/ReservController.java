package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.ReservService;
import com.iticket.app.service.impl.SeatSaveService;
import com.iticket.app.service.impl.SeatService;

import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ReservationVO;
import com.iticket.app.vo.SeatSaveVO;
import com.iticket.app.vo.SeatVO;

@Controller
public class ReservController {
	@Autowired
	private ReservService reservService;
	@Autowired
	private SeatService seatService;
	@Autowired
	private DetailService detailService;
	@Autowired
	private SeatSaveService seatsaveService;

	@GetMapping("reserv_ssh")
	public String get_reserv_List(ReservationVO vo, Model model) {

		List<ReservationVO> reserv_list = reservService.get_reserv_List(vo);
		model.addAttribute("get_reserv_List", reserv_list);
		return "/reserv/reserv_ssh";
	}
	
	// 예약 삭제 메소드
	@GetMapping("get_reserv_del")
	public String get_reserv_del(ReservationVO vo, Model model) {

		ReservationVO get_reserv = reservService.get_reserv(vo);
		model.addAttribute("get_reserv", get_reserv);
		return "/reserv/reserv_delete";
	}
	// insert_reserv 창으로 진입(행사 데이터 리스트 삽입)
	@GetMapping("/insert_reserv")
	public String go_reserv_insert(DetailVO vo, Model model) {
		List<DetailVO> detail_list = detailService.getDetail_list(vo);
		model.addAttribute("getDetail_list", detail_list);

		return "/reserv/reserv_insert";
	}
	
	// insert_reserv창으로 진입, 이때 삽입되는 데이터는 get_Detail_insert로 하나만 삽입
	@RequestMapping("get_Detail_insert")
	public String reserv_insert_1(DetailVO dvo, Model model) {
		DetailVO detail = detailService.getDetail(dvo);
		model.addAttribute("detail", detail);
		return "/reserv/reserv_insert";
	}
	
	// 예약 삭제창으로 이동( 추후 삭제할 메소드임 )
	@RequestMapping("delete_reserv")
	public String go_reserv_delete(ReservationVO vo, Model model) {
		List<ReservationVO> reserv_list = reservService.get_reserv_List(vo);
		model.addAttribute("get_reserv_List", reserv_list);
		return "/reserv/reserv_delete";
	}

	//reservation 테이블과 seatsave 테이블에 각각 데이터를 삽입
	@RequestMapping("insert_reserv_do")
	public String insert_reserv(ReservationVO rvo, Model model) {
		System.out.println(">>> reserv insert");
		System.out.println("insert vo : " + rvo);
		System.out.println("sd_num  : " + rvo.getSd_num());
		
		SeatSaveVO save_vo = new SeatSaveVO();
		save_vo.setSeat_able(1);
		save_vo.setSd_num(rvo.getSd_num());
		save_vo.setSt_num(rvo.getSt_num());
		System.out.println("save_vo  : " + save_vo);
		seatsaveService.seatsave_insert(save_vo);
		reservService.insert_reserv(rvo);

		return "/reserv/reserv_ssh";
	}


	//삽입된 rv_num에 해당하는 데이터 삭제
	@RequestMapping("delete_reserv_do")
	public String delete_reserv(ReservationVO vo) {
		System.out.println(">>> delete_reserv 실행");
		System.out.println("vo : " + vo);

		reservService.delete_reserv(vo);
		return "/reserv/reserv_ssh";
	}

}
