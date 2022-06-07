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
	
	@GetMapping("get_reserv_del")
	public String get_reserv_del(ReservationVO vo, Model model) {

		ReservationVO get_reserv = reservService.get_reserv(vo);
		model.addAttribute("get_reserv", get_reserv);
		return "/reserv/reserv_delete";
	}
	// ���� �߰� ������ ù��°
	@GetMapping("/insert_reserv")
	public String go_reserv_insert(DetailVO vo, Model model) {
		List<DetailVO> detail_list = detailService.getDetail_list(vo);
		model.addAttribute("getDetail_list", detail_list);

		return "/reserv/reserv_insert";
	}
	
	// ���� �߰� ���� �� ��縦 �����ϸ� ó������ ����ϴ� ��Ʈ�ѷ� �޼ҵ�
	@RequestMapping("get_Detail_insert")
	public String reserv_insert_1(DetailVO dvo, Model model) {
		DetailVO detail = detailService.getDetail(dvo);
		model.addAttribute("detail", detail);
		return "/reserv/reserv_insert";
	}

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
	public String insert_reserv(ReservationVO rvo,int sd_num, Model model) {
		System.out.println(">>> reserv insert");
		System.out.println("insert vo : " + rvo);
		System.out.println("sd_num  : " + sd_num);
		
		SeatSaveVO save_vo = new SeatSaveVO();
		save_vo.setSeat_able(1);
		save_vo.setSd_num(sd_num);
		save_vo.setSt_num(rvo.getSt_num());
		System.out.println("save_vo  : " + save_vo);
		seatsaveService.seatsave_insert(save_vo);
		reservService.insert_reserv(rvo);

		return "/reserv/reserv_ssh";
	}

	@RequestMapping("update_reserv_do")
	public String update_reserv(ReservationVO vo) {
		System.out.println(">>> �Խñ� ����");
		System.out.println("vo : " + vo);

		reservService.update_reserv(vo);
		return "/reserv/reserv_ssh";
	}

	@RequestMapping("delete_reserv_do")
	public String delete_reserv(ReservationVO vo) {
		System.out.println(">>> �Խñ� ����");
		System.out.println("vo : " + vo);

		reservService.delete_reserv(vo);
		return "/reserv/reserv_ssh";
	}

}
