package com.chilli.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "imageBanner")
public class ImageBanner implements Serializable {
  private static final long serialVersionUID = 1L;

  /* image detail Id */
  @Id
  @Column(name="IMAGE_BANNER_ID")
  private String imageBannerId;

  /* image detail path */
  @Column(name="IMAGE_BANNER_URL")
  private String imageBannerUrl;

  /* language */
  @Column(name = "LANGUAGE")
  private String language;

  /* Content */
  @Column(name = "IMAGE_BANNER_CONTENT")
  private String content;
  
  /* type */
  @Column(name = "IMAGE_BANNER_TYPE")
  private String type;
  /* City */
  @ManyToOne
  @JoinColumn(name = "CITY_ID")
  private City city;
  
  /* hotel */
  @ManyToOne
  @JoinColumn(name = "HOTEL_ID")
  private Hotel hotel;

  /**
   * get Hotel
   * @return hotel
   */
  public Hotel getHotel() {
    return hotel;
}

  /**
   * set Hotel
   * @param hotel
   */
  public void setHotel(Hotel hotel) {
    this.hotel = hotel;
  }

/**
   * Get Type of image banner
   * @return type
   */
  public String getType() {
    return type;
  }

  /**
   * Set type
   * @param type
   */
  public void setType(String type) {
    this.type = type;
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
   * get city
   * @return city
   */
  public City getCity() {
    return city;
}

  /**
   * set City
   * @param city
   */
  public void setCity(City city) {
    this.city = city;
  }

/**
   * Get Content
   * @return content
   */
  public String getContent() {
    return content;
  }

  /**
   * Set Content
   * @param content
   */
  public void setContent(String content) {
    this.content = content;
  }

   /**
   * get ImageBannerId
   * @return imageBannerId
   */
  public String getImageBannerId() {
    return imageBannerId;
  }

  /**
   * Set ImageBannerId
   * @param imageBannerId String
   */
  public void setImageBannerId(String imageBannerId) {
    this.imageBannerId = imageBannerId;
  }

  /**
   * get ImageBannerUrl
   * @return imageBannerUrl String
   */
  public String getImageBannerUrl() {
    return imageBannerUrl;
  }

  /**
   * set ImageBannerUrl
   * @param imageBannerUrl
   */
  public void setImageBannerUrl(String imageBannerUrl) {
    this.imageBannerUrl = imageBannerUrl;
  }

}
