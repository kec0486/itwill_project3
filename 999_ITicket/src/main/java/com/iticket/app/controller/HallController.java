package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.HallService;
import com.iticket.app.vo.HallVO;

@Controller
public class HallController {
	@Autowired
	private HallService hallService;

	@GetMapping("hall_ssh")
	public String get_hall_List(HallVO vo, Model model) {
		List<HallVO> hall_list = hallService.get_hall_List(vo);
		model.addAttribute("get_hall_List", hall_list);
		return "/reserv/reserv_ssh";
	}

	@RequestMapping("insert_hall")
	public String go_hall_insert() {
		return "/hall/hall_insert";
	}
	
	@RequestMapping("delete_hall")
	public String go_hall_delete() {
		return "/reserv/hall_delete";
	}
	
	@RequestMapping("update_hall")
	public String go_hall_update() {
		return "/reserv/hall_update";
	}
	
	@RequestMapping("insert_hall_do")
	public String insert_hall(HallVO vo) {
		System.out.println(">>> hall insert");
		System.out.println("insert vo : " + vo);
		hallService.insert_hall(vo);
		return "/reserv/hall_ssh";
	}
	
	@RequestMapping("update_hall_do")
	public String update_hall(HallVO vo) {
		System.out.println(">>> 게시글 수정");
		System.out.println("vo : " + vo);
		
		hallService.update_hall(vo);
		return "/reserv/hall_ssh";
	}

	@RequestMapping("delete_hall_do")
	public String delete_hall(HallVO vo) {
		System.out.println(">>> 게시글 삭제");
		System.out.println("vo : " + vo);
		
		hallService.delete_hall(vo);
		return "/reserv/hall_ssh";
	}
	
}
