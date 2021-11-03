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
 * ROom properties
 * 
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Entity
@Table(name = "room")
public class Room implements Serializable {
  private static final long serialVersionUID = 1L;

  /* room id */
  @Id
  @Column(name = "ROOM_ID")
  private String roomId;

  /* Room number */
  @Column(name = "ROOM_LOCATION")
  private String roomLocation;

  /* Room Description */
  @Column(name = "ROOM_DESCRIPTION")
  private String roomDescription;

  /* Room Status */
  @Column(name = "ROOM_STATUS")
  private String roomStatus;

  /* language */
  @Column(name = "LANGUAGE")
  private String language;

  /* image */
  @Column(name = "IMAGE_URL")
  private String imageUrl;

  /* old price */
  @Column(name = "OLD_PRICE")
  private Integer oldPrice;

  /* average new price */
  @Column(name = "NEW_PRICE")
  private Integer newPrice;

  /* category 1-VIP, 2-Normal, 3-medium */
  @Column(name = "CATEGORY")
  private String category;

  /* List room image */
  @OneToMany(mappedBy = "room")
  private List<RoomImage> lstRoomImg;

  /* hotel */
  @ManyToOne
  @JoinColumn(name = "HOTEL_ID")
  private Hotel hotel;

  /**
   * get room id
   * @return roomId String
   */
  public String getRoomId() {
    return roomId;
  }

  /**
   * set room id
   * @param roomId String
   */
  public void setRoomId(String roomId) {
    this.roomId = roomId;
  }

  /**
   * get room location
   * @return
   */
  public String getRoomLocation() {
    return roomLocation;
  }

  /**
   * Set room location
   * @param roomLocation String
   */
  public void setRoomLocation(String roomLocation) {
    this.roomLocation = roomLocation;
  }

  /**
   * get room description
   * @return roomDescription String
   */
  public String getRoomDescription() {
    return roomDescription;
  }

  /**
   * set room Description
   * @param roomDescription String
   */
  public void setRoomDescription(String roomDescription) {
    this.roomDescription = roomDescription;
  }

  /**
   * get roomStatus
   * @return roomStatus String
   */
  public String getRoomStatus() {
    return roomStatus;
  }

  /**
   * set room Status
   * @param roomStatus String
   */
  public void setRoomStatus(String roomStatus) {
    this.roomStatus = roomStatus;
  }

  /**
   * get language
   * @return language String
   */
  public String getLanguage() {
    return language;
  }

  /**
   * set language
   * @param language String
   */
  public void setLanguage(String language) {
    this.language = language;
  }

  /**
   * get imageUrl
   * @return imageUrl String
   */
  public String getImageUrl() {
    return imageUrl;
  }

  /**
   * set imageUrl
   * @param imageUrl string
   */
  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }

  public Integer getOldPrice() {
    return oldPrice;
  }

  /**
   * get old price
   * @param oldPrice Integer
   */
  public void setOldPrice(Integer oldPrice) {
    this.oldPrice = oldPrice;
  }

  /**
   * get new price
   * @return newPrice Integer
   */
  public Integer getNewPrice() {
    return newPrice;
  }

  /**
   * set new price
   * @param newPrice Integer
   */
  public void setNewPrice(Integer newPrice) {
    this.newPrice = newPrice;
  }

  /**
   * get category
   * @return category 
   */
  public String getCategory() {
    return category;
  }

  /**
   * set category
   * @param category String
   */
  public void setCategory(String category) {
    this.category = category;
  }

  /**
   * get list room image
   * @return lstRoomImg List
   */
  public List<RoomImage> getLstRoomImg() {
    return lstRoomImg;
  }

  /**
   * set list room image
   * @param lstRoomImg List
   */
  public void setLstRoomImg(List<RoomImage> lstRoomImg) {
    this.lstRoomImg = lstRoomImg;
  }

  /**
   * get Hotel
   * @return Hotel
   */
  public Hotel getHotel() {
    return hotel;
  }

  /**
   * set hotel
   * @param hotel Hotel
   */
  public void setHotel(Hotel hotel) {
    this.hotel = hotel;
  }

  /**
   * get old price format
   * 
   * @return currency
   */
  public String getOldPriceFormat() {

    String strOldPrice = String.valueOf(this.oldPrice);
    if (this.language.equals("en")) {
      if (strOldPrice.length() <= 3) {
        strOldPrice = "$" + strOldPrice;
      } else {
        String pr1 = strOldPrice.substring(0, strOldPrice.length() - 3);
        String pr2 = strOldPrice.substring(strOldPrice.length() - 3, strOldPrice.length());
        strOldPrice = "$" + pr1 + "." + pr2;
      }

    } else {
      if (strOldPrice.length() >= 7) {
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
   * 
   * @return currency
   */
  public String getNewPriceFormat() {
    String strNewPrice = String.valueOf(this.newPrice);
    if (this.language.equals("en")) {
      if (strNewPrice.length() <= 3) {
        strNewPrice = "$" + strNewPrice;
      } else {
        String pr1 = strNewPrice.substring(0, strNewPrice.length() - 3);
        String pr2 = strNewPrice.substring(strNewPrice.length() - 3, strNewPrice.length());
        strNewPrice = "$" + pr1 + "." + pr2;
      }
    } else {
      if (strNewPrice.length() >= 7) {
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
