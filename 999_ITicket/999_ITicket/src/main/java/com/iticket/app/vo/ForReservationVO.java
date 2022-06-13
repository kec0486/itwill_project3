package com.iticket.app.vo;


public class ForReservationVO {
	private String gd_title;
	private String sd_date;
	private String start_time;
	private int rv_num;
	
	public String getGd_title() {
		return gd_title;
	}
	public void setGd_title(String gd_title) {
		this.gd_title = gd_title;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public int getRv_num() {
		return rv_num;
	}
	public void setRv_num(int rv_num) {
		this.rv_num = rv_num;
	}
	public String getSd_date() {
		return sd_date;
	}
	public void setSd_date(String sd_date) {
		this.sd_date = sd_date;
	}
	@Override
	public String toString() {
		return "ForReservationVO [gd_title=" + gd_title + ", sd_date=" + sd_date + ", start_time=" + start_time
				+ ", rv_num=" + rv_num + "]";
	}
	
	
}
