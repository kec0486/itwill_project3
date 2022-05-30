package com.iticket.app.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.DetailVO;

@Repository
public class DetailDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public DetailVO getDetail(DetailVO vo) {
		return mybatis.selectOne("detailDAO.getDetail", vo);
	}

}
