package com.bean;

import java.io.Serializable;

public class AdminBean implements Serializable{
	private String uname;
	private String upass;
	private String ufname;
	private String ulname;
	private String addr;
	private String mail_id;
	private String phone;
	
	public AdminBean() {}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUfname() {
		return ufname;
	}
	public void setUfname(String ufname) {
		this.ufname = ufname;
	}
	public String getUlname() {
		return ulname;
	}
	public void setUlname(String ulname) {
		this.ulname = ulname;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getMail_id() {
		return mail_id;
	}
	public void setMail_id(String mail_id) {
		this.mail_id = mail_id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
