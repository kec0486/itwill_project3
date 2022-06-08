package com.iticket.app.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.ReviewService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ForReservationVO;
import com.iticket.app.vo.ReviewVO;
import com.iticket.app.vo.ScheduleVO;

@Controller
public class WriteRController {
	@Autowired
	private DetailService detailService;
	@Autowired
	private ReviewService reviewService;
	private DetailController detailController;
	
	// go to review.jsp directly with detail info
	@RequestMapping("writeR")
	public String goReviewPage(DetailVO vo, Model model) {
		DetailVO detail = detailService.getDetail(vo);
		model.addAttribute("detail", detail);
		return "review";
	}
	
	@GetMapping("getGdNum")
	public String getDetail(DetailVO vo, Model model) {
		DetailVO detail = detailService.getDetail(vo);
		model.addAttribute("detail", detail);
		return "reserv";
	}
	
	//insert review and return the reserv.jsp
	@PostMapping("insertReview")
	public String insertReview(ReviewVO vo, DetailVO detail, Model model) {
		System.out.println("reviewVO: " + vo);
		reviewService.insertReivew(vo);
		int inportant = vo.getGd_num();
		return "redirect:/getDetail?gd_num=" + inportant;
	}
	@GetMapping("getReservDate")
	public String getReservDate(ReviewVO vo, Model model) {
		List<ForReservationVO> list = reviewService.getReservDate(vo);
		model.addAttribute("reservDate", list);
		return "datePopup";
	}
	
	@GetMapping("getOneResDate")
	public String getOneResDate(ReviewVO vo, Model model) {
		ScheduleVO date = reviewService.getOneRDate(vo);
		return "review";
	}
	
}
