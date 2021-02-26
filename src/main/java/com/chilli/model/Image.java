package com.chilli.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Images of Product
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
@Entity
@Table(name = "image")
public class Image implements Serializable {

  private static final long serialVersionUID = 1L;

  /* image Id */
  @Id
  @Column(name="IMAGE_ID")
  private String imageId;

  /* image path */
  @Column(name="IMAGE_URL")
  private String imageUrl;

//  /* Product */
//  @ManyToOne
//  @JoinColumn(name="PRODUCT_ID")
//  private Product product;

  /**
   * get Image Id
   * @return image Id String
   */
  public String getImageId() {
    return imageId;
  }

  /**
   * set image Id
   * @param imageId String
   */
  public void setImageId(String imageId) {
    this.imageId = imageId;
  }

  /**
   * get Image path
   * @return Image Url String
   */
  public String getImageUrl() {
    return imageUrl;
  }

  /**
   * Set image Url
   * @param imageUrl String
   */
  public void setImageUrl(String imageUrl) {
    this.imageUrl = imageUrl;
  }


}
