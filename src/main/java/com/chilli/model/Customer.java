package com.chilli.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Customer
 * 
 * @author Mr.ly
 * @version 1.0 2020-09-09
 * 
 */
@Entity
@Table(name = "customer")
public class Customer implements Serializable {
  private static final long serialVersionUID = 1L;

  /* Customer Id */
  @Id
  @Column(name = "CUSTOMER_ID")
  private String customerId;

  /* role */
  @Column(name = "ROLE")
  private String role;

  /* Customer Name */
  @Column(name = "NAME")
  private String name;

  /* Customer Phone */
  @Column(name = "PHONE_NUMBER")
  private String phoneNumber;

  /* Customer Email */
  @Column(name = "EMAIL")
  private String email;

  /* Customer Birthday */
  @Column(name = "BIRTHDAY")
  private String birthday;

  /* Customer password */
  @Column(name = "PASSWORD")
  private String password;

  /* Customer address */
  @Column(name = "ADDRESS")
  private String address;

  /* Customer Is logIn */
  @Column(name = "ISLOGIN")
  private String isLogin;
  
  /* Customer Dell Flag */
  @Column(name = "DLT_FLG")
  private String dltFlg;

  /* Update Id */
  @Column(name = "UPD_ID")
  private String updId;

  /* Create Date */
  @Column(name = "CREATE_DATE")
  private Date createDate;

  /* Update Date */
  @Column(name = "UPD_DATE")
  private Date updDate;

  /**
   * Get Role
   * @return String role
   */
  public String getRole() {
    return role;
  }

  /**
   * Set Role
   * @param role
   */
  public void setRole(String role) {
    this.role = role;
  }

  /**
   * Customer Address
   * @return address
   */
  public String getAddress() {
    return address;
  }

  /**
   * Set Address
   * @param address
   */
  public void setAddress(String address) {
    this.address = address;
  }

  /**
   * get Update Id
   * @return update Id
   */
  public String getUpdId() {
    return updId;
  }

  /**
   * set update Id
   * @param updId
   */
  public void setUpdId(String updId) {
    this.updId = updId;
  }

  /**
   * get Create Date
   * @return Date createDate
   */
  public Date getCreateDate() {
    return createDate;
  }

  /**
   * Set Create Date
   * @param createDate
   */
  public void setCreateDate(Date createDate) {
    this.createDate = createDate;
  }

  /**
   * get Update Dtae
   * @return update Date
   */
  public Date getUpdDate() {
    return updDate;
  }

  /**
   * Set Update Date
   * @param updDate
   */
  public void setUpdDate(Date updDate) {
    this.updDate = updDate;
  }

  /**
   * Set Is Login
   * @param isLogin
   */
  public void setIsLogin(String isLogin) {
    this.isLogin = isLogin;
  }

  /**
   * Get Del Flag
   * @return String del flg
   */
  public String getDltFlg() {
    return dltFlg;
}

  /**
   * Set Del flag
   * @param dltFlg
   */
  public void setDltFlg(String dltFlg) {
    this.dltFlg = dltFlg;
}

/**
   * Get Pass Word
   * @return String password
   */
  public String getPassword() {
    return password;
  }

  /**
   * Set password
   * @param password
   */
  public void setPassword(String password) {
    this.password = password;
  }

  /**
   * Get is Login
   * @return String is Login
   */
  public String getIsLogin() {
    return isLogin;
  }

  /**
   * Get Email
   * @return String email
   */
  public String getEmail() {
    return email;
  }

  /**
   * Set Email
   * @param email
   */
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * Get Birthday
   * @return String birthday
   */
  public String getBirthday() {
    return birthday;
  }

  /**
   * Set Birthdday
   * @param birthday
   */
  public void setBirthday(String birthday) {
    this.birthday = birthday;
  }

  /**
   * Get phone
   * @return String phone
   */
  public String getPhoneNumber() {
    return phoneNumber;
  }

  /**
   * Set phone
   * @param phoneNumber
   */
  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  /**
   * Get Customer Id
   * @return String CustomerId
   */
  public String getCustomerId() {
    return customerId;
  }

  /**
   * Set CustomerId
   * @param customerId
   */
  public void setCustomerId(String customerId) {
    this.customerId = customerId;
  }

  /**
   * get Name
   * @return String Name
   */
  public String getName() {
    return name;
  }

  /**
   * set Name
   * @param name
   */
  public void setName(String name) {
    this.name = name;
  }


}
