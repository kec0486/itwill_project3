package com.iticket.app.vo;

public class SeatVO {
	private int st_num;
	private int st_able;
	private int hl_buildingnum;
	
	public int getSt_num() {
		return st_num;
	}
	public void setSt_num(int st_num) {
		this.st_num = st_num;
	}
	public int getSt_able() {
		return st_able;
	}
	public void setSt_able(int st_able) {
		this.st_able = st_able;
	}
	public int getHl_buildingnum() {
		return hl_buildingnum;
	}
	public void setHl_buildingnum(int hl_buildingnum) {
		this.hl_buildingnum = hl_buildingnum;
	}
	@Override
	public String toString() {
		return "SeatVO [st_num=" + st_num + ", st_able=" + st_able + ", hl_buildingnum=" + hl_buildingnum + "]";
	}
	
	
}
