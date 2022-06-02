package com.iticket.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iticket.app.vo.ReservationVO;


@Repository
public class ReservDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<ReservationVO> get_reserv_list(ReservationVO vo) {
		System.out.println("===> MyBatis ��� get_reserv_list() ����");
		return mybatis.selectList("reservDAO.get_reserv_List");
	}
	
	public ReservationVO get_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis ��� get_reserv() ����");
		return mybatis.selectOne("reservDAO.get_reserv",vo);
	}
	
	//�� �Է�
	public void insert_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis ��� insert_reserv() ����");
		mybatis.insert("reservDAO.insert_reserv", vo);
	}
	
	//�� ����
	public void update_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis ��� update_reserv() ����");
		mybatis.update("reservDAO.update_reserv", vo);
	}

	//�� ����
	public void delete_reserv(ReservationVO vo) {
		System.out.println("===> MyBatis ��� delete_reserv() ����");
		mybatis.delete("reservDAO.delete_reserv", vo);
	}
}
