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
 * Tour properties
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Entity
@Table(name = "tourImage")
public class TourImage implements Serializable{
  private static final long serialVersionUID = 1L;

  /* image id of tour */
  @Id
  @Column(name = "TOUR_IMAGE_ID")
  private String tourImageId;

  /* url of image */
  @Column(name = "TOUR_IMAGE_URL")
  private String tourImageUrl;

  /* Tour */
  @ManyToOne
  @JoinColumn(name ="TOUR_ID")
  private Tour tour;

  /**
   * get tourImageId
   * @return tourImageId String
   */
  public String getTourImageId() {
    return tourImageId;
  }

  /**
   * set tourImageId
   * @param tourImageId
   */
  public void setTourImageId(String tourImageId) {
    this.tourImageId = tourImageId;
  }

  /**
   * get tourImageUrl
   * @return tourImageUrl String
   */
  public String getTourImageUrl() {
    return tourImageUrl;
  }

  /**
   * set tourImageUrl
   * @param tourImageUrl
   */
  public void setTourImageUrl(String tourImageUrl) {
    this.tourImageUrl = tourImageUrl;
  }

  /**
   * get tour
   * @return tour Tour
   */
  public Tour getTour() {
    return tour;
  }

  /**
   * set tour
   * @param tour
   */
  public void setTour(Tour tour) {
    this.tour = tour;
  }

}
