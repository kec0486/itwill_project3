package com.iticket.app.dao;

import java.util.List;

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

	public List<DetailVO> getNameList(DetailVO vo) {
		return mybatis.selectList("detailDAO.getMusicalName");
	}

	public List<DetailVO> getExhiNames() {
		return mybatis.selectList("detailDAO.getExhiNames");
	}
	
	public List<DetailVO> getDetail_list() {
		return mybatis.selectList("detailDAO.getDetail_list");
	}

	public List<DetailVO> getImgs() {
		return mybatis.selectList("detailDAO.getImgs");
	}

	public List<DetailVO> getConcert() {
		return mybatis.selectList("detailDAO.getConcert");
	}

	public List<DetailVO> getPlaying() {
		return mybatis.selectList("detailDAO.getPlaying");
	}

	public List<DetailVO> getClassic() {
		return mybatis.selectList("detailDAO.getClassic");
	}
}
