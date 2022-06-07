package com.iticket.app.vo;

import javax.swing.Spring;

public class ReservationVO {
	private int rv_num;
	private int rv_cnt;
	private int st_num;
	private String user_id;
	private int sd_num;
	
	
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	public int getRv_cnt() {
		return rv_cnt;
	}
	public void setRv_cnt(int rv_cnt) {
		this.rv_cnt = rv_cnt;
	}
	public int getSt_num() {
		return st_num;
	}
	public void setSt_num(int st_num) {
		this.st_num = st_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getSd_num() {
		return sd_num;
	}
	public void setSd_num(int sd_num) {
		this.sd_num = sd_num;
	}
	@Override
	public String toString() {
		return "ReservationVO [rv_num=" + rv_num + ", rv_cnt=" + rv_cnt + ", st_num=" + st_num + ", user_id=" + user_id
				+ ", sd_num=" + sd_num + "]";
	}
	
	
	
	
	
	
}
