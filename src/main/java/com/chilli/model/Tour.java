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
 * Tour properties
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Entity
@Table(name = "tour")
public class Tour implements Serializable{
  private static final long serialVersionUID = 1L;

  /* id */
  @Id
  @Column(name = "TOUR_ID")
  private String tourId;
  
  /* tour name */
  @Column(name = "TOUR_NAME")
  private String tourName;

  /* tour category */
  @ManyToOne
  @JoinColumn(name = "CATEGORY_ID")
  private TourCategory tourCategory;

  /* list image */
  @OneToMany(mappedBy = "tour")
  private List<TourImage> tourImages;

  /**
   * get Tour Id
   * @return tourId String
   */
  public String getTourId() {
    return tourId;
  }

  /**
   * Set tour Id
   * @param tourId
   */
  public void setTourId(String tourId) {
    this.tourId = tourId;
  }

  /**
   * get list image
   * @return lstImage List
   */
  public List<TourImage> getTourImages() {
    return tourImages;
  }

  /**
   * Set list image
   * @param lstImage
   */
  public void setTourImages(List<TourImage> tourImages) {
    this.tourImages = tourImages;
  }

  /**
   * get tourId
   * @return tourId String
   */
  public String gettourId() {
    return tourId;
  }

  /**
   * set tour Id
   * @param tourId
   */
  public void settourId(String tourId) {
    this.tourId = tourId;
  }

  /**
   * get Tour Name
   * @return tourName String
   */
  public String getTourName() {
    return tourName;
  }

  /**
   * Set tour name
   * @param tourName
   */
  public void setTourName(String tourName) {
    this.tourName = tourName;
  }

  /**
   * get tour category
   * @return tourCategory String
   */
  public TourCategory getTourCategory() {
    return tourCategory;
  }

  /**
   * Set tour category
   * @param tourCategory
   */
  public void setTourCategory(TourCategory tourCategory) {
    this.tourCategory = tourCategory;
  }

  
}
