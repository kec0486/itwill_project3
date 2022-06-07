package com.iticket.app.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.ReviewVO;

@Repository
public class ReviewDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertReview(ReviewVO vo) {
		mybatis.insert("reviewDAO.insertReview", vo);
	}
	
	
}
