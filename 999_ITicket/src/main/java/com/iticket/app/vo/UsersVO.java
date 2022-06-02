package com.iticket.app.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UsersVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String email;
	private String phone;
	private Date regdate;
	private String enabled;
	private String naverLogin;
	public UsersVO() {
		// TODO Auto-generated constructor stub
	}
	public UsersVO(String user_id, String user_pw, String user_name, String email, String phone, Date regdate,
			String enabled, String naverLogin) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.email = email;
		this.phone = phone;
		this.regdate = regdate;
		this.enabled = enabled;
		this.naverLogin = naverLogin;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getNaverLogin() {
		return naverLogin;
	}
	public void setNaverLogin(String naverLogin) {
		this.naverLogin = naverLogin;
	}
	@Override
	public String toString() {
		return "UsersVO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", email=" + email
				+ ", phone=" + phone + ", regdate=" + regdate + ", enabled=" + enabled + ", naverLogin=" + naverLogin
				+ "]";
	}
	
	
	
	
	
	
}
