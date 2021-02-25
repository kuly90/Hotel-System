package com.chilli.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "USER_ID")
	private String userId;

	@Column(name = "NAME")
	private String name;

	@Column(name = "PHONE_NUMBER")
	private String phoneNumber;

	@Column(name = "EMAIL")
	private String email;

	@Column(name = "BIRTHDAY")
	private String birthday;
	
	@Column(name = "PASSWORD")
	private String password;
	
	@Column(name = "ADDRESS")
	private String address;

	@Column(name = "ISLOGIN")
	private String isLogin;
	
	 //Customer Del Flag
	 @Column(name = "DLT_FLG")
	 private String dltFlg;
	
	public String getDltFlg() {
		return dltFlg;
	}

	public void setDltFlg(String dltFlg) {
		this.dltFlg = dltFlg;
	}

	@Column(name = "UPD_ID")
	private String updId;
	
	@Column(name = "CREATE_DATE")
	private Date createDate;
	
	@Column(name = "UPD_DATE")
	private Date updDate;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUpdId() {
		return updId;
	}

	public void setUpdId(String updId) {
		this.updId = updId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdDate() {
		return updDate;
	}

	public void setUpdDate(Date updDate) {
		this.updDate = updDate;
	}

	public void setIsLogin(String isLogin) {
		this.isLogin = isLogin;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIsLogin() {
		return isLogin;
	}

	public void setIsLoin(String isLogin) {
		this.isLogin = isLogin;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getphoneNumber() {
		return phoneNumber;
	}

	public void setphoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
