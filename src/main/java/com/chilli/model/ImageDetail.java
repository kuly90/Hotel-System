package com.chilli.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Image detail of product
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 */
@Entity
@Table(name = "imageDetail")
public class ImageDetail implements Serializable {
  private static final long serialVersionUID = 1L;

  /* image detail Id */
  @Id
  @Column(name="IMAGE_DETAIL_ID")
  private String imageDetailId;

  /* image detail path */
  @Column(name="IMAGE_DETAIL_URL")
  private String imageDetailUrl;

  /* Product */
  @ManyToOne
  @JoinColumn(name="PRODUCT_ID")
  private Product product;

  /**
   * get Image detail Id
   * @return image Id detail String
   */
  public String getImageDetailId() {
    return imageDetailId;
  }

  /**
   * set image detail Id
   * @param imageDetailId String
   */
  public void setImageDetailId(String imageDetailId) {
    this.imageDetailId = imageDetailId;
  }

  /**
   * get Image detail path
   * @return imageDetailUrl Url String
   */
  public String getImageDetailUrl() {
    return imageDetailUrl;
  }

  /**
   * Set image detail Url
   * @param imageDetailUrl String
   */
  public void setImageDetailUrl(String imageDetailUrl) {
    this.imageDetailUrl = imageDetailUrl;
  }

  /**
   * Get Product
   * @return product Product
   */
  public Product getProduct() {
    return product;
  }

  /**
   * Set Product
   * @param product Product
   */
  public void setProduct(Product product) {
    this.product = product;
  }

}
