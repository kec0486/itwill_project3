package com.iticket.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.ReviewDAO;
import com.iticket.app.vo.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewDAO reviewDAO;

	@Override
	public void insertReivew(ReviewVO vo) {
		reviewDAO.insertReview(vo);
	}
	
}
