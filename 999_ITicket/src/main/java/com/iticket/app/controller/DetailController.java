package com.iticket.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.ReviewService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ReviewVO;

@Controller
public class DetailController {
	@Autowired
	private DetailService detailService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("reserv")
	public String goReserv() {
		return "reserv";
	}
	
	@RequestMapping("getDetail")
	public String getDetail(DetailVO vo, Model model) {
		DetailVO detail = detailService.getDetail(vo);
		System.out.println("vo: " + vo);
		List<ReviewVO> list = reviewService.reviewList(vo);
		model.addAttribute("reviewList", list);
		model.addAttribute("detail", detail);
		return "reserv";
	}
	
	@GetMapping("/home")
	public String goImg(Model model) {
		List<DetailVO> list = detailService.getImgs();
		model.addAttribute("imgList", list);
		return "nav";
	}

}
