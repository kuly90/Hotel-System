package com.chilli.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
public class Hotel implements Serializable {
  private static final long serialVersionUID = 1L;

  /* hotel id */
  @Id
  @Column(name = "HOTEL_ID")
  private String hotelId;

  /* Hotel Name */
  @Column(name = "HOTEL_NAME")
  private String hotelName;

  /* Hotel Star */
  @Column(name = "HOTEL_STAR")
  private String hotelStar;

  /* Hotel Address */
  @Column(name = "HOTEL_ADRESS")
  private String hotelAddress;

  /* Hotel Phone */
  @Column(name = "HOTEL_PHONE")
  private String hotelPhone;

  /* Hotel Description */
  @Column(name = "HOTEL_DESCRIPTION")
  private String hotelDescription;
  
  /* Hotel Status */
  @Column(name = "HOTEL_STATUS")
  private String hotelStatus;

  /* language */
  @Column(name = "LANGUAGE")
  private String language;

  /* image */
  @Column(name = "IMAGE_URL")
  private String imageUrl;

  /* average old price */
  @Column(name = "AVERAGE_OLD_PRICE")
  private Integer aveOldPrice;

  /* average new price */
  @Column(name = "AVERAGE_NEW_PRICE")
  private Integer aveNewPrice;

  /* category 1: hotel - 3:resort */
  @Column(name = "CATEGORY")
  private String category;

  /* City */
  @ManyToOne
  @JoinColumn(name = "CITY_ID")
  private City city;

  /* List Banner */
  @OneToMany(mappedBy = "hotel")
  private List<ImageBanner> lstBanner;

  /**
   * get category
   * @return category
   */
  public String getCategory() {
    return category;
  }

  /**
   * set category
   * @param category
   */
  public void setCategory(String category) {
    this.category = category;
  }

/**
   * Get average Old price
   * @return
   */
  public Integer getAveOldPrice() {
    return aveOldPrice;
  }

  /**
   * set average Old Price
   * @param aveOldPrice
   */
  public void setAveOldPrice(Integer aveOldPrice) {
    this.aveOldPrice = aveOldPrice;
  }

  /**
   * Get average new price
   * @return aveNewPrice
   */
  public Integer getAveNewPrice() {
    return aveNewPrice;
  }

  /**
   * Set average New price
   * @param aveNewPrice
   */
  public void setAveNewPrice(Integer aveNewPrice) {
    this.aveNewPrice = aveNewPrice;
  }

/**
   * get Image url
   * @return imageUrl
   */
  public String getImageUrl() {
    return imageUrl;
  }

  /**
   * Set image
   * @param imageUrl
   */
  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  /**
   * Get lits banner of hotel
   * @return list of banner
   */
  public List<ImageBanner> getLstBanner() {
    return lstBanner;
  }

  /**
   * Set lits banner of hotel
   * @param lstBanner
   */
  public void setLstBanner(List<ImageBanner> lstBanner) {
    this.lstBanner = lstBanner;
  }

/**
   * get language
   * @return language
   */
  public String getLanguage() {
    return language;
  }

  /**
   * Set language
   * @param language
   */
  public void setLanguage(String language) {
    this.language = language;
  }
/**
   * get Hotel Id
   * @return hotelId String
   */
  public String getHotelId() {
    return hotelId;
  }

  /**
   * get number Star of hotel
   * @return hotelStar
   */
  public String getHotelStar() {
    return hotelStar;
  }

  /**
   * set star Of hotel
   * @param hotelStar
   */
  public void setHotelStar(String hotelStar) {
    this.hotelStar = hotelStar;
  }

/**
   * Set Hotel Id
   * @param hotelId String
   */
  public void setHotelId(String hotelId) {
    this.hotelId = hotelId;
  }

  /**
   * get description
   * @return hotelDescription
   */
  public String getHotelDescription() {
    return hotelDescription;
  }

  /**
   * set description
   * @param hotelDescription
   */
  public void setHotelDescription(String hotelDescription) {
    this.hotelDescription = hotelDescription;
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

  /**
   * get old price format
   * @return currency
   */
  public String getOldPriceFormat() {

    String strOldPrice = String.valueOf(this.aveOldPrice);
    if (this.language.equals("en")) {
      if (strOldPrice.length() <= 3) {
        strOldPrice = "$" + strOldPrice;
      } else {
        String pr1 = strOldPrice.substring(0, strOldPrice.length() - 3);
        String pr2 = strOldPrice.substring(strOldPrice.length() - 3, strOldPrice.length());
        strOldPrice = "$" + pr1 + "." + pr2;
      }
    } else {
      if(strOldPrice.length() >= 7) {
        String pr1 = strOldPrice.substring(0, strOldPrice.length() - 6);
        String pr2 = strOldPrice.substring(strOldPrice.length() - 6, strOldPrice.length() - 3);
        String pr3 = strOldPrice.substring(strOldPrice.length() - 3, strOldPrice.length());
        strOldPrice = pr1 + "." + pr2 + "." + pr3;
      } else {
        String pr1 = strOldPrice.substring(0, strOldPrice.length() - 3);
        String pr2 = strOldPrice.substring(strOldPrice.length() - 3, strOldPrice.length());
        strOldPrice = pr1 + "." + pr2;
      }
    }
    return strOldPrice;
  }

  /**
   * get old price format
   * @return currency
   */
  public String getNewPriceFormat() {
    String strNewPrice = String.valueOf(this.aveNewPrice);
      if (this.language.equals("en")) {
        if (strNewPrice.length() <= 3) {
          strNewPrice = "$" + strNewPrice;
        } else {
          String pr1 = strNewPrice.substring(0, strNewPrice.length() - 3);
          String pr2 = strNewPrice.substring(strNewPrice.length() - 3, strNewPrice.length());
          strNewPrice = "$" + pr1 + "." + pr2;
        }
      } else {
        if(strNewPrice.length() >= 7) {
          String pr1 = strNewPrice.substring(0, strNewPrice.length() - 6);
          String pr2 = strNewPrice.substring(strNewPrice.length() - 6, strNewPrice.length() - 3);
          String pr3 = strNewPrice.substring(strNewPrice.length() - 3, strNewPrice.length());
          strNewPrice = pr1 + "." + pr2 + "." + pr3;
        } else {
          String pr1 = strNewPrice.substring(0, strNewPrice.length() - 3);
          String pr2 = strNewPrice.substring(strNewPrice.length() - 3, strNewPrice.length());
          strNewPrice = pr1 + "." + pr2;
        }
      }
      return strNewPrice;
  }
}
