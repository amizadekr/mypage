package com.company.mypage.member.vo;

public class LoginVo {

	private String email;
	private String password;
	private char status;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public char getStatus() {
		return status;
	}

	public void setStatus(char status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "LoginVo[email=" + email + ", password=" + password + ", status=" + status + "]";
	}

}
