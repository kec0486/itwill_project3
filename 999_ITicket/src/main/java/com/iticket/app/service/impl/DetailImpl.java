package com.iticket.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iticket.app.dao.DetailDAO;
import com.iticket.app.vo.DetailVO;

@Service
public class DetailImpl implements DetailService{
	@Autowired
	private DetailDAO detailDAO;

	@Override
	public DetailVO getDetail(DetailVO vo) {
		return detailDAO.getDetail(vo);
	}

	@Override
	public List<DetailVO> getNameList(DetailVO vo) {
		return detailDAO.getNameList(vo);
	}

	@Override
	public List<DetailVO> getExhiName() {
		return detailDAO.getExhiNames();
	}

	@Override
	public List<DetailVO> getDetail_list(DetailVO vo) {
		return detailDAO.getDetail_list();
	}

	@Override
	public List<DetailVO> getImgs() {
		return detailDAO.getImgs();
	}

	@Override
	public List<DetailVO> getConcert(DetailVO vo) {
		return detailDAO.getConcert();
	}

	@Override
	public List<DetailVO> getPlaying(DetailVO vo) {
		return detailDAO.getPlaying();
	}

	@Override
	public List<DetailVO> getClassic(DetailVO vo) {
		return detailDAO.getClassic();
	}
	
}
