package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.DetailVO;

public interface DetailService {
	DetailVO getDetail(DetailVO vo);
	List<DetailVO> getNameList(DetailVO vo);
	List<DetailVO> getExhiName();
	List<DetailVO> getDetail_list(DetailVO vo);
}
