package com.chilli.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 
 * City Properties
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 */
@Entity
@Table(name = "city")
public class City  implements Serializable{
  private static final long serialVersionUID = 1L;

  /* city Id */
  @Id
  @Column(name = "CITY_ID")
  private String cityId;

  /* City Name */
  @Column(name = "CITY_NAME")
  private String cityName;

  @Column(name = "CITY_IMAGE")
  private String cityImage;

  @Column(name = "CITY_DESCRIPTION")
  private String cityDesc;

  /* List Hotel */
  @OneToMany(mappedBy = "city")
  private List<Hotel> lstHotel;

  /* List Hotel */
  @OneToMany(mappedBy = "city")
  private List<ImageBanner> lstBanner;

  /**
  * get List hotel in city
   * @return lstHotel
   */
  public List<Hotel> getLstHotel() {
    return lstHotel;
}

  /**
   * Set list Hotel in city
   * @param lstHotel
   */
  public void setLstHotel(List<Hotel> lstHotel) {
    this.lstHotel = lstHotel;
}

  /**
   * get about of city
   * @return cityDesc
   */
  public String getCityDesc() {
  return cityDesc;
}

  /**
   * Set city Description
   * @param cityDesc
   */
  public void setCityDesc(String cityDesc) {
    this.cityDesc = cityDesc;
}

  /**
   * Get City Id
   * @return City Id
   */
  public String getCityId() {
    return cityId;
  }

  /**
   * Set city Id
   * @param cityId
   */
  public void setCityId(String cityId) {
    this.cityId = cityId;
  }

  /**
   * Get City Name
   * @return city Name String
   */
  public String getCityName() {
    return cityName;
  }

  /**
   * Set City Name
   * @param cityName
   */
  public void setCityName(String cityName) {
    this.cityName = cityName;
  }

  /**
   * Get image of City
   * @return city Image
   */
  public String getCityImage() {
    return cityImage;
  }

  /**
   * Set City Image
   * @param cityImage
   */
  public void setCityImage(String cityImage) {
    this.cityImage = cityImage;
  }

}
