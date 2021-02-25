package com.chilli.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 
 * Hotel properties
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Entity
@Table(name = "hotel")
public class Hotel implements Serializable{
  private static final long serialVersionUID = 1L;

  /* hotel id */
  @Id
  @Column(name = "HOLTEL_ID")
  private String hotelId;

  /* Hotel Name */
  @Column(name = "HOTEL_NAME")
  private String hotelName;

  /* Hotel Address */
  @Column(name = "HOTEL_ADRESS")
  private String hotelAddress;

  /* Hotel Phone */
  @Column(name = "HOTEL_PHONE")
  private String hotelPhone;

  /* Hotel Status */
  @Column(name = "HOTEL_STATUS")
  private String hotelStatus;

  /* City */
  @ManyToOne
  @JoinColumn(name = "CITY_ID")
  private City city;

  /**
   * get Hotel Id
   * @return hotelId String
   */
  public String getHotelId() {
    return hotelId;
  }

  /**
   * Set Hotel Id
   * @param hotelId String
   */
  public void setHotelId(String hotelId) {
    this.hotelId = hotelId;
  }

  /**
   * get Hotel Name
   * @return hotelName String
   */
  public String getHotelName() {
    return hotelName;
  }

  /**
   * Set Hotel Name
   * @param hotelName String
   */
  public void setHotelName(String hotelName) {
    this.hotelName = hotelName;
  }

  /**
   * Get hotel address
   * @return hotelAddress String
   */
  public String getHotelAddress() {
    return hotelAddress;
  }

  /**
   * Set hotel Address
   * @param hotelAddress String
   */
  public void setHotelAddress(String hotelAddress) {
    this.hotelAddress = hotelAddress;
  }

  /**
   * get Hotel phone
   * @return hotelPhone String
   */
  public String getHotelPhone() {
    return hotelPhone;
  }

  /**
   * Set Hotel phone
   * @param hotelPhone String
   */
  public void setHotelPhone(String hotelPhone) {
    this.hotelPhone = hotelPhone;
  }

  /**
   * Get Hotel Status
   * @return hotelStatus String
   */
  public String getHotelStatus() {
    return hotelStatus;
  }

  /**
   * Set Hotel Status
   * @param hotelStatus String
   */
  public void setHotelStatus(String hotelStatus) {
    this.hotelStatus = hotelStatus;
  }

  /**
   * Get city of hotel
   * @return city City
   */
  public City getCity() {
    return city;
  }

  /**
   * Set City
   * @param city City
   */
  public void setCity(City city) {
    this.city = city;
  }

}
