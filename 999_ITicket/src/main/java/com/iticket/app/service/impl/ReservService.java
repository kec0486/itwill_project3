package com.iticket.app.service.impl;

import java.util.List;

import com.iticket.app.vo.ReservationVO;

public interface ReservService {
	void insert_reserv(ReservationVO vo);
	void update_reserv(ReservationVO vo);
	void delete_reserv(ReservationVO vo);
	ReservationVO get_reserv(ReservationVO vo);
	List<ReservationVO> get_reserv_List(ReservationVO vo);
	
	
}
