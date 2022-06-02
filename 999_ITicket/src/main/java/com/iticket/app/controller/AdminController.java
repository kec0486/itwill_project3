package com.iticket.app.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.fileupload.UploadContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.iticket.app.service.impl.AdminService;
import com.iticket.app.vo.DetailVO;
import com.iticket.app.vo.UsersVO;



@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;// 이름이 겹쳐도됨
	
	/*
	 * // 상품전체리스트조회
	 * 
	 * @GetMapping("/admin/productlist") public String getBoardList(DetailVO vo,
	 * Model model) {
	 * 
	 * System.out.println("게시글 전체목록 보여주기"); List<DetailVO> DetailVOList =
	 * adminService.getDetailList(vo);
	 * 
	 * model.addAttribute("getDetailList", DetailVOList); return
	 * "admin/productlist"; }
	 */
	
	
	
	
	
	  //회원정보조회
	  @GetMapping("/admin/userlist")
	  public String getUserList(UsersVO vo, Model model) {
	  
		  System.out.println("게시글 전체목록 보여주기");
		  
		  List<UsersVO> userList = adminService.getuserlist(vo);
		  model.addAttribute("userList", userList);
		  adminService.getuserlist(vo);
		  return "admin/member";
	  }
	 

	// 주소만 가는 controller(상품삭제)
	@GetMapping("/admin/prodelete")
	public String productdelete1(DetailVO vo, Model model) {
		return "admin/productdelete";
	}

	// 상품삭제처리
	@GetMapping("/admin/productdelete")
	public String productdelete(DetailVO vo, Model model) {
		System.out.println("게시글삭제");
		System.out.println("deletevo:" + vo);
		adminService.getdelete(vo);
		return getBoardList(vo, model);
	}

	// 주소만 가는 controller(상품추가)
	@GetMapping("/admin/productinsert")
	public String productinsert(DetailVO vo, Model model) {

		return "admin/productinsert";
	}

	// 상품추가
	@GetMapping("/admin/getinsert")
	public String getinsert(DetailVO vo, Model model) {
		System.out.println("게시글추가");
		System.out.println("insert vo" + vo);
		adminService.getinsert(vo);

		return getBoardList(vo, model);

	}

	// 상품전체리스트조회
	@GetMapping("/admin/productlist")
	public String getBoardList(DetailVO vo, Model model) {

		System.out.println("게시글 전체목록 보여주기");
		List<DetailVO> DetailVOList = adminService.getDetailList(vo);

		model.addAttribute("getDetailList", DetailVOList);
		return "admin/productlist";
	}
}
