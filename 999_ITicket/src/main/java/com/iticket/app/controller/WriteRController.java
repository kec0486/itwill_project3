package com.iticket.app.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iticket.app.service.impl.DetailService;
import com.iticket.app.service.impl.ReviewService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.ReviewVO;

@Controller
public class WriteRController {
	@Autowired
	private DetailService detailService;
	@Autowired
	private ReviewService reviewService;
	
	// go to review.jsp directly with detail info
	@RequestMapping("writeR")
	public String goReviewPage(DetailVO vo, Model model) {
		DetailVO detail = detailService.getDetail(vo);
		model.addAttribute("detail", detail);
		return "review";
	}
	
	//insert review and return the reserv.jsp
	@PostMapping("insertReview")
	public String insertReview(ReviewVO vo) {
		reviewService.insertReivew(vo);
		return "reserv";
	}
	
}
